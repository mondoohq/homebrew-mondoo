
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.14.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4ff159c29edc2edae7b0539f6342d70dc1cdc68274f3afb20b3a58f290816e2e"
    url "https://releases.mondoo.com/cnspec/11.14.1/cnspec_11.14.1_darwin_amd64.tar.gz"
  else
    sha256 "86a1319e6c3198f43163ee29d8f738dcf4dc9b638d34817d6737de67cfe71767"
    url "https://releases.mondoo.com/cnspec/11.14.1/cnspec_11.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

