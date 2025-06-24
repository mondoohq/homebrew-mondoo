
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.60.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "1777f49862e719d765a2ffb0f5af19bb5ab0418c119fc4abe4323985192850e1"
    url "https://releases.mondoo.com/cnspec/11.60.0/cnspec_11.60.0_darwin_amd64.tar.gz"
  else
    sha256 "6c23501a9c76b08e07b9d639477648115c4cb5b740b4f14c17d8a4f6bbebe344"
    url "https://releases.mondoo.com/cnspec/11.60.0/cnspec_11.60.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

