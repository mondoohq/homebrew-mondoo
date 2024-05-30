
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.6.2"
  

  if Hardware::CPU.intel?
    sha256 "3d9f2a507bb5130c1491de24a582001402b1333d461566243b2c3837e90497f1"
    url "https://releases.mondoo.com/cnquery/11.6.2/cnquery_11.6.2_darwin_amd64.tar.gz"
  else
    sha256 "558e3606b7ec55de9aae1f164ec891ba562548e466891ee7d8fb8f0aafee1964"
    url "https://releases.mondoo.com/cnquery/11.6.2/cnquery_11.6.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

