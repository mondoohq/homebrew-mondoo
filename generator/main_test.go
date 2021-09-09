package main

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestFormula(t *testing.T) {
	buf := new(bytes.Buffer)
	err := renderFormula(Formula{
		Desc:        "Mondoo",
		Homepage:    "https://mondoo.io",
		Version:     "5.0.0",
		Binary:      "mondoo",
		Sha256Amd64: "abc",
		Sha256Arm64: "efg",
	}, buf)
	if err != nil {
		t.Fatal(err)
	}
	require.Nil(t, err)

	expected := "\nclass Mondoo < Formula\n  desc \"Mondoo\"\n  homepage \"https://mondoo.io\"\n  version \"5.0.0\"\n\n  if Hardware::CPU.intel?\n    sha256 \"abc\" #amd64sha\n    url \"https://releases.mondoo.io/mondoo/5.0.0/mondoo_5.0.0_darwin_amd64.tar.gz\"\n  else\n    sha256 \"efg\" #arm64sha\n    url \"https://releases.mondoo.io/mondoo/5.0.0/mondoo_5.0.0_darwin_arm64.tar.gz\"\n  end\n\n  def install\n    bin.install \"mondoo\"\n  end\n\n  test do\n    system \"#{bin}/mondoo --version\"\n  end\nend\n"

	assert.Equal(t, expected, buf.String())
}
