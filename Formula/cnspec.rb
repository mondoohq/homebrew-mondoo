
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.9.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "af0a734e8a8c33dcd86b1a0ca29c53205c2eb7127a7e4236e2081dbdd81218ee"
    url "https://releases.mondoo.com/cnspec/9.9.3/cnspec_9.9.3_darwin_amd64.tar.gz"
  else
    sha256 "fe94d1547ec8bf13dcda7716237f44ec0e6b27c508a8f70cbb22447ef24c5331"
    url "https://releases.mondoo.com/cnspec/9.9.3/cnspec_9.9.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

