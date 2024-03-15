
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.7.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "677b043c288e556afe4430c4acd3777df8fc117ef920dbf6c40523e106da6335"
    url "https://releases.mondoo.com/cnspec/10.7.2/cnspec_10.7.2_darwin_amd64.tar.gz"
  else
    sha256 "cf57f01205efd04554faa8179324698918cb66d4faee2ba67218345bf5d3ce1c"
    url "https://releases.mondoo.com/cnspec/10.7.2/cnspec_10.7.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

