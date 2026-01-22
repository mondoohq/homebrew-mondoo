
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.19.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "39daa2412b325b9efb2c8b02d9fe588b7deb3c4aac04c0c3941904925402d148"
    url "https://releases.mondoo.com/cnspec/12.19.2/cnspec_12.19.2_darwin_amd64.tar.gz"
  else
    sha256 "69e4d75980aee9fa258f20fb7313b3b8e4ec2d054da3d8a98dad34f76cc8a1db"
    url "https://releases.mondoo.com/cnspec/12.19.2/cnspec_12.19.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

