
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.21.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3ac591423861a70d614eeb56d43f6de04fd03ee588d622fd3ce05d365152360d"
    url "https://releases.mondoo.com/cnspec/12.21.0/cnspec_12.21.0_darwin_amd64.tar.gz"
  else
    sha256 "042e7729d3c4da37ee05dee00ccd71c8bf6bfd9759babf022f6528dfe6bf940b"
    url "https://releases.mondoo.com/cnspec/12.21.0/cnspec_12.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

