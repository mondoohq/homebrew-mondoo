
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.19.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a1442638eaea2c469d8db8e392d8793a29677d47bdd2d438c53d03d51958c91a"
    url "https://releases.mondoo.com/cnspec/11.19.0/cnspec_11.19.0_darwin_amd64.tar.gz"
  else
    sha256 "4af8966fed98cd7aa12ed72bcb74a3a143a7c53acf218bcd87d5686dd59de6a8"
    url "https://releases.mondoo.com/cnspec/11.19.0/cnspec_11.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

