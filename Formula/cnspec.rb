
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.10.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f63cbb50dff64598ac82a4e517594ad6135b05697e3900ea37ef6c04d69365fc"
    url "https://releases.mondoo.com/cnspec/10.10.0/cnspec_10.10.0_darwin_amd64.tar.gz"
  else
    sha256 "bc07c5b5bab4ae9813b751d34aba60b04ac1b242697aca5a02fe011b71af0ff7"
    url "https://releases.mondoo.com/cnspec/10.10.0/cnspec_10.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

