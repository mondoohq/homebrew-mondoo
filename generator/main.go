package main

import (
	"bytes"
	"fmt"
	"log"
	"os"
	"regexp"
	"strings"
)

const (
	latestUrl = "https://releases.mondoo.io/mondoo/latest.json?ignoreCache=1"
	desc      = "Mondoo Client CLI for the Mondoo Policy as Code Platform"
	homepage  = "https://mondoo.io"
	binary    = "mondoo"
)

var versionMatcher = regexp.MustCompile(`mondoo\/(\d+.\d+.\d+)\/mondoo`)

// Usage: go run main.go
// Example: go run generator/main.go Formula/mondoo.rb
func main() {
	latest, err := fetchLatest()
	if err != nil {
		log.Fatal(err)
	}

	if len(os.Args) != 2 {
		panic("need argument 'formula' or 'cask'")
	}

	buf := new(bytes.Buffer)
	switch os.Args[1] {
	case "formula":
		// filter by darwin releases and create formula
		formula := &Formula{
			Desc:     desc,
			Homepage: homepage,
			Binary:   binary,
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
			Desc:     desc,
			Homepage: homepage,
			Binary:   binary,
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
