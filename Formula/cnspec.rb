
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.28.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "5656435aa092fbb181e861b8c1e9b4cb918a86facb5f11c01ebfb46f41b75f35"
    url "https://releases.mondoo.com/cnspec/11.28.1/cnspec_11.28.1_darwin_amd64.tar.gz"
  else
    sha256 "4a21434fb425a424fae92b6aadbffaffc18a78973d78ead8a30b96e6bc6c1ce3"
    url "https://releases.mondoo.com/cnspec/11.28.1/cnspec_11.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

