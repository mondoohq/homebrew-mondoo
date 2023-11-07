
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.6.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "52d1004b069bce2a485a3c593d4562b3171b0dd77d6725b9d30ec66f7e0e86d5"
    url "https://releases.mondoo.com/cnspec/9.6.0/cnspec_9.6.0_darwin_amd64.tar.gz"
  else
    sha256 "b599d6641ff711cbbc1891903a96ee79b02bdbeef2524efc61c1914fa540edd3"
    url "https://releases.mondoo.com/cnspec/9.6.0/cnspec_9.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

