
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.6.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ddbbce2ec66eb5764b78581a49b56c35884b15e08e64533627d6c2a9ab4632ff"
    url "https://releases.mondoo.com/cnspec/11.6.0/cnspec_11.6.0_darwin_amd64.tar.gz"
  else
    sha256 "98a003f63c4c74caf7038874ffa6e088727c13477eaa789e0c39c7a9a116761e"
    url "https://releases.mondoo.com/cnspec/11.6.0/cnspec_11.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

