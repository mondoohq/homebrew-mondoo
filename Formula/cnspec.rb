
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "1b53cb53ddc8a9b90c99432c79208a1becf6e09d80779f0b7c23413e06ed3e31"
    url "https://releases.mondoo.com/cnspec/9.0.2/cnspec_9.0.2_darwin_amd64.tar.gz"
  else
    sha256 "24fc64920d4c420a3812c6ac09e7e912897dc257c20bb066772bc5bc210a278a"
    url "https://releases.mondoo.com/cnspec/9.0.2/cnspec_9.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

