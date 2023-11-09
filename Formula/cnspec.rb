
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.6.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "af4a459d857f082d1115258026b2df44b0dd8a37a212c0b1605bb64e63809501"
    url "https://releases.mondoo.com/cnspec/9.6.1/cnspec_9.6.1_darwin_amd64.tar.gz"
  else
    sha256 "e0dc94faabfac7e8ae1c1a9cb4e777e45cacc780befd872ffc8466186b60bc04"
    url "https://releases.mondoo.com/cnspec/9.6.1/cnspec_9.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

