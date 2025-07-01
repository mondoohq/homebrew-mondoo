
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.61.0"
  

  if Hardware::CPU.intel?
    sha256 "e357efafad210e100abc329937e169c043207ccf37c332dc6e8b905885d1101c"
    url "https://releases.mondoo.com/cnquery/11.61.0/cnquery_11.61.0_darwin_amd64.tar.gz"
  else
    sha256 "33377958323d965fab67500c93f7b67d6be2957dedb1d6d675488ce4855be7b8"
    url "https://releases.mondoo.com/cnquery/11.61.0/cnquery_11.61.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

