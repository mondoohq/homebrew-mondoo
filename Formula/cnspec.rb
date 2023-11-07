
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.5.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0f998875d42a1cec35af9163cca1fb473f80f6513e2f69186067eade9a7c6ea0"
    url "https://releases.mondoo.com/cnspec/9.5.3/cnspec_9.5.3_darwin_amd64.tar.gz"
  else
    sha256 "523593495a66cb433007532a86b2a157fcdf54180fc80fa57387d7b8afd752c9"
    url "https://releases.mondoo.com/cnspec/9.5.3/cnspec_9.5.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

