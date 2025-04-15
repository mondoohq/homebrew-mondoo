
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.50.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ef0809b5785f07ff2defff5fcb64f52ca9904cbf713f732b60cb7b30a1e388a9"
    url "https://releases.mondoo.com/cnspec/11.50.0/cnspec_11.50.0_darwin_amd64.tar.gz"
  else
    sha256 "bf9a3eb080db7b255be67fab0766f1f98419c9d9eae25fd11e6d92efa3a74b81"
    url "https://releases.mondoo.com/cnspec/11.50.0/cnspec_11.50.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

