
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.38.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3c91003240950842007b2acfb931fe819fd3be177dfc0d1edebaba78c62c635c"
    url "https://releases.mondoo.com/cnspec/11.38.0/cnspec_11.38.0_darwin_amd64.tar.gz"
  else
    sha256 "c6194e0a3eba8ee34db5719641ddcc17d903dd4c87308ac582a2c3e139ef5652"
    url "https://releases.mondoo.com/cnspec/11.38.0/cnspec_11.38.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

