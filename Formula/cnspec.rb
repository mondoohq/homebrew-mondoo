
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.30.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4801d62ab2a266ef69a23a8b82603c283e090212d36f6ac7e50af8eb80c6fea8"
    url "https://releases.mondoo.com/cnspec/11.30.1/cnspec_11.30.1_darwin_amd64.tar.gz"
  else
    sha256 "51b071f293ac6caac879a4946ca010ef8c8ed05def0e22e48c92d99c1c51c565"
    url "https://releases.mondoo.com/cnspec/11.30.1/cnspec_11.30.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

