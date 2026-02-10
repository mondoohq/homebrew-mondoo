
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.22.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d8146ef35552e1bb49bf81a015b6c62861b7e703a613c3a70c799edaa9c685ef"
    url "https://releases.mondoo.com/cnspec/12.22.0/cnspec_12.22.0_darwin_amd64.tar.gz"
  else
    sha256 "fc747c81ef2ac62eaae1550c844150f3123b193414f238a1a33865c05db0354f"
    url "https://releases.mondoo.com/cnspec/12.22.0/cnspec_12.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

