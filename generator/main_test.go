// Copyright (c) Mondoo, Inc.
// SPDX-License-Identifier: BUSL-1.1

package main

import (
	"bytes"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestFormula(t *testing.T) {
	formula := &Formula{
		Class:       "Cnspec",
		Desc:        "Cnspec",
		Homepage:    "https://mondoo.com",
		Version:     "5.0.0",
		Binary:      "cnspec",
		Sha256Amd64: "abc",
		Sha256Arm64: "efg",
	}

	buf := new(bytes.Buffer)
	err := formula.Render(buf)
	if err != nil {
		t.Fatal(err)
	}
	require.Nil(t, err)

	expected := "\n# Copyright (c) Mondoo, Inc.\n# SPDX-License-Identifier: BUSL-1.1\n\nclass Cnspec < Formula\n  desc \"Cnspec\"\n  homepage \"https://mondoo.com\"\n  version \"5.0.0\"\n  depends_on \"cnquery\"\n\n  if Hardware::CPU.intel?\n    sha256 \"abc\"\n    url \"https://releases.mondoo.com/cnspec/5.0.0/cnspec_5.0.0_darwin_amd64.tar.gz\"\n  else\n    sha256 \"efg\"\n    url \"https://releases.mondoo.com/cnspec/5.0.0/cnspec_5.0.0_darwin_arm64.tar.gz\"\n  end\n\n  def install\n    bin.install \"cnspec\"\n  end\n\n  test do\n    system \"#{bin}/cnspec --version\"\n  end\nend\n"
	assert.Equal(t, expected, buf.String())
}

func TestCask(t *testing.T) {
	cask := &Cask{
		Desc:     "Mondoo",
		Homepage: "https://mondoo.com",
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

	expected := "\n# Copyright (c) Mondoo, Inc.\n# SPDX-License-Identifier: BUSL-1.1\n\ncask \"mondoo\" do\n  name \"Mondoo\"\n  desc \"Mondoo\"\n  version \"5.0.0\"\n  homepage \"https://mondoo.com\"\n\n  url \"https://releases.mondoo.com/mondoo/#{version}/mondoo_#{version}_darwin_universal.pkg\"\n  sha256 \"abc\"\n\n  livecheck do\n    url \"https://releases.mondoo.com/mondoo/latest/index.html\"\n    regex(%r{href='\\.\\./(\\d+(?:\\.\\d+)+)}i)\n  end\n\n  pkg \"mondoo_#{version}_darwin_universal.pkg\"\n\n  uninstall script: {\n    executable: \"/Library/Mondoo/uninstall.sh\",\n    sudo:       true,\n  }\n\n  zap trash: [\n    \"/Library/Mondoo\",\n    \"/etc/opt/mondoo\",\n    \"/usr/local/bin/mondoo\",\n    \"/Library/LaunchDaemons/io.mondoo.client.plist\",\n  ]\nend\n"
	assert.Equal(t, expected, buf.String())
}
