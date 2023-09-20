// Copyright (c) Mondoo, Inc.
// SPDX-License-Identifier: BUSL-1.1

package main

import (
	"bytes"
	"fmt"
	"log"
	"os"
	"regexp"
	"strings"
)

type product struct {
	latestUrl string
	desc      string
	homepage  string
	binary    string
	class     string
}

var products = map[string]product{
	"mondoo": {
		latestUrl: "https://releases.mondoo.com/mondoo/latest.json?ignoreCache=1",
		desc:      "Mondoo Client CLI for the Mondoo Policy as Code Platform",
		homepage:  "https://mondoo.com",
		binary:    "mondoo",
		class:     "Mondoo",
	},
	"cnquery": {
		latestUrl: "https://releases.mondoo.com/cnquery/latest.json?ignoreCache=1",
		desc:      "Cloud-Native Query - Asset Inventory Framework",
		homepage:  "https://mondoo.com",
		binary:    "cnquery",
		class:     "Cnquery",
	},
	"cnspec": {
		latestUrl: "https://releases.mondoo.com/cnspec/latest.json?ignoreCache=1",
		desc:      "Cloud-Native Security and Policy Framework ",
		homepage:  "https://mondoo.com",
		binary:    "cnspec",
		class:     "Cnspec",
	},
}

// Usage: go run main.go
// Example: go run generator/main.go mondoo Formula/mondoo.rb
func main() {
	if len(os.Args) != 3 {
		panic("need argument 'formula' or 'cask'")
	}

	productName := os.Args[2]
	product := products[productName]

	latest, err := fetchLatest(product.latestUrl)
	if err != nil {
		log.Fatal(err)
	}

	var versionMatcher = regexp.MustCompile(product.binary + `\/(\d+.\d+.\d+(?:[-\d\w]+)?)\/` + product.binary)

	buf := new(bytes.Buffer)
	switch os.Args[1] {
	case "formula":
		// filter by darwin releases and create formula
		formula := &Formula{
			Class:    product.class,
			Desc:     product.desc,
			Homepage: product.homepage,
			Binary:   product.binary,
		}

		for i := range latest.Files {
			f := latest.Files[i]

			m := versionMatcher.FindStringSubmatch(f.Filename)
			if len(m) == 2 {
				formula.Version = m[1]
			}

			if f.Platform == "darwin" && strings.HasSuffix(f.Filename, "amd64.tar.gz") {
				formula.Sha256Amd64 = f.Hash
			}
			if f.Platform == "darwin" && strings.HasSuffix(f.Filename, "arm64.tar.gz") {
				formula.Sha256Arm64 = f.Hash
			}
		}
		formula.Render(buf)
	case "cask":
		cask := &Cask{
			Desc:     product.desc,
			Homepage: product.homepage,
			Binary:   product.binary,
		}

		for i := range latest.Files {
			f := latest.Files[i]

			m := versionMatcher.FindStringSubmatch(f.Filename)
			if len(m) == 2 {
				cask.Version = m[1]
			}

			if f.Platform == "darwin" && strings.HasSuffix(f.Filename, "darwin_universal.pkg") {
				cask.Sha256 = f.Hash
			}
		}
		cask.Render(buf)
	}

	fmt.Println(buf.String())
	os.Exit(0)
}
