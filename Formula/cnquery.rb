
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.41.0"
  

  if Hardware::CPU.intel?
    sha256 "294a21d79e130330a2d0c917441f8da04223881fa17494b942b108afd722de97"
    url "https://releases.mondoo.com/cnquery/11.41.0/cnquery_11.41.0_darwin_amd64.tar.gz"
  else
    sha256 "1ed7bf780251149feede69fb8a804dcc1c56bd10c824b2af98b2acc905412703"
    url "https://releases.mondoo.com/cnquery/11.41.0/cnquery_11.41.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

