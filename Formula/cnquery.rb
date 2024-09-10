
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.21.0"
  

  if Hardware::CPU.intel?
    sha256 "c35d8e1e74a543b14ba6855ea983b72be9aa304a86c8786ea20420be828bc83f"
    url "https://releases.mondoo.com/cnquery/11.21.0/cnquery_11.21.0_darwin_amd64.tar.gz"
  else
    sha256 "0b50eb926139310c4ef75b2d16692864f79761ce308210f57a8798d52fd2a173"
    url "https://releases.mondoo.com/cnquery/11.21.0/cnquery_11.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

