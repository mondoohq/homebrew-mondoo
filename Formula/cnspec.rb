
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.32.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "73a06c0dce7cc88c8f274c046d50f114b5bfa4865037fb0c1648ca6cd2641ab9"
    url "https://releases.mondoo.com/cnspec/11.32.0/cnspec_11.32.0_darwin_amd64.tar.gz"
  else
    sha256 "ae3d91e4af144c3b9e7a374e84e6a66b8e6333fde7e5ee7f043b50cbdf32db41"
    url "https://releases.mondoo.com/cnspec/11.32.0/cnspec_11.32.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

