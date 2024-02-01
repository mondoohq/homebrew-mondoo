
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.4"
  

  if Hardware::CPU.intel?
    sha256 "4559de256affdf0128cff725f380077f43c721c171be846108ee3b976166411a"
    url "https://releases.mondoo.com/cnquery/10.1.4/cnquery_10.1.4_darwin_amd64.tar.gz"
  else
    sha256 "d70efa7bdfd753869b573267b73ee9a92c3f13646bad3bcdd5aeb7e21418a22f"
    url "https://releases.mondoo.com/cnquery/10.1.4/cnquery_10.1.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

