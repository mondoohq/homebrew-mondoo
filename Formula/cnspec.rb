
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.19.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fd9ba56ba00dc6bd7e1c352e3c72d7628f2e2f5b6bcff9f67f2f113d93a25ff2"
    url "https://releases.mondoo.com/cnspec/12.19.0/cnspec_12.19.0_darwin_amd64.tar.gz"
  else
    sha256 "b57e8cbd899ebd9352dfab48c4740896a69d12a4d608425db380bca689724451"
    url "https://releases.mondoo.com/cnspec/12.19.0/cnspec_12.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

