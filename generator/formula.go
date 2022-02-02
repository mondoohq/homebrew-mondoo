package main

import (
	"encoding/json"
	"io"
	"net/http"
	"text/template"
)

type Latest struct {
	Files []File `json:"files"`
}

type File struct {
	Filename string `json:"filename"`
	Size     int    `json:"size"`
	Platform string `json:"platform"`
	Hash     string `json:"hash"`
}

func fetchLatest() (*Latest, error) {
	resp, err := http.Get(latestUrl)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	data, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	var latest Latest
	if err := json.Unmarshal(data, &latest); err != nil {
		return nil, err
	}

	return &latest, nil
}

type Formula struct {
	Desc        string `json:"desc"`
	Homepage    string `json:"homepage"`
	Version     string `json:"version"`
	Binary      string `json:"binary"`
	Sha256Amd64 string `json:"sha254amd64"`
	Sha256Arm64 string `json:"sha256arm64"`
}

var formulaTemplate = `
class Mondoo < Formula
  desc "{{ .Desc }}"
  homepage "{{ .Homepage }}"
  version "{{ .Version }}"

  if Hardware::CPU.intel?
    sha256 "{{ .Sha256Amd64 }}"
    url "https://releases.mondoo.io/{{ .Binary }}/{{ .Version }}/{{ .Binary }}_{{ .Version }}_darwin_amd64.tar.gz"
  else
    sha256 "{{ .Sha256Arm64 }}"
    url "https://releases.mondoo.io/{{ .Binary }}/{{ .Version }}/{{ .Binary }}_{{ .Version }}_darwin_arm64.tar.gz"
  end

  def install
    bin.install "{{ .Binary }}"
  end

  test do
    system "#{bin}/{{ .Binary }} --version"
  end
end
`

func (f *Formula) Render(out io.Writer) error {
	t := template.Must(template.New("formula").Parse(formulaTemplate))
	return t.Execute(out, f)
}