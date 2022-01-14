package main

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestFormula(t *testing.T) {
	formula := &Formula{
		Desc:        "Mondoo",
		Homepage:    "https://mondoo.io",
		Version:     "5.0.0",
		Binary:      "mondoo",
		Sha256Amd64: "abc",
		Sha256Arm64: "efg",
	}

	buf := new(bytes.Buffer)
	err := formula.Render(buf)
	if err != nil {
		t.Fatal(err)
	}
	require.Nil(t, err)

	expected := "\nclass Mondoo < Formula\n  desc \"Mondoo\"\n  homepage \"https://mondoo.io\"\n  version \"5.0.0\"\n\n  if Hardware::CPU.intel?\n    sha256 \"abc\"\n    url \"https://releases.mondoo.io/mondoo/5.0.0/mondoo_5.0.0_darwin_amd64.tar.gz\"\n  else\n    sha256 \"efg\"\n    url \"https://releases.mondoo.io/mondoo/5.0.0/mondoo_5.0.0_darwin_arm64.tar.gz\"\n  end\n\n  def install\n    bin.install \"mondoo\"\n  end\n\n  test do\n    system \"#{bin}/mondoo --version\"\n  end\nend\n"
	assert.Equal(t, expected, buf.String())
}

func TestCask(t *testing.T) {
	cask := &Cask{
		Desc:     "Mondoo",
		Homepage: "https://mondoo.io",
		Version:  "5.0.0",
		Binary:   "mondoo",
		Sha256:   "abc",
	}

	buf := new(bytes.Buffer)
	err := cask.Render(buf)
	if err != nil {
		t.Fatal(err)
	}
	require.Nil(t, err)

	expected := "\ncask \"mondoo-cli\" do\n  name \"Mondoo\"\n  desc \"Mondoo\"\n  version \"5.0.0\"\n  homepage \"https://mondoo.io\"\n\n  url \"https://releases.mondoo.io/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg\"\n  sha256 \"abc\"\n\n  livecheck do\n    url \"https://releases.mondoo.io/mondoo/latest/index.html\"\n    regex(%r{href='\\.\\./(\\d+(?:\\.\\d+)+)}i)\n  end\n\n  pkg \"mondoo_#{version}_darwin_universal.pkg\"\n\n  uninstall script: {\n    executable: \"/Library/Mondoo/#{version}/uninstall.sh\",\n    sudo:       true,\n  }\n\n  zap trash: [\n    \"/Library/Mondoo\",\n    \"/etc/opt/mondoo\",\n    \"/usr/local/bin/mondoo\",\n  ]\nend\n"
	assert.Equal(t, expected, buf.String())
}
