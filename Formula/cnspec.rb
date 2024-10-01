
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.24.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "35d27f47eb8eb76c4d2bd1079ced44170e1d2e50087baab62085a0ed6d7584b7"
    url "https://releases.mondoo.com/cnspec/11.24.0/cnspec_11.24.0_darwin_amd64.tar.gz"
  else
    sha256 "d9acf80d0cd7794c3ed166d9a0d4473a057984615f92eed4846c75696b86e7ac"
    url "https://releases.mondoo.com/cnspec/11.24.0/cnspec_11.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

