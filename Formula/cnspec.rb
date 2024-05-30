
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.6.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7c8d3830ad5a06aabfa1ce9c3a0dd8d98f8b3df0081668bef521073bfd46349f"
    url "https://releases.mondoo.com/cnspec/11.6.1/cnspec_11.6.1_darwin_amd64.tar.gz"
  else
    sha256 "bef185c9db753d0aeea44f234f228b6f1c353a5dc1181a31bb4b33e9f14bcc0c"
    url "https://releases.mondoo.com/cnspec/11.6.1/cnspec_11.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

