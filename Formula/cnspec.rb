
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.53.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a94b16f8aeb7bb9b229aa486c8fc5d92b47679136b36bdceadc0ab2ce914db7f"
    url "https://releases.mondoo.com/cnspec/11.53.0/cnspec_11.53.0_darwin_amd64.tar.gz"
  else
    sha256 "aee4fd93f81d4094f5045f032e6c41c49f6c478647f84adf1b2f5bfe67e92783"
    url "https://releases.mondoo.com/cnspec/11.53.0/cnspec_11.53.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

