
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.4"
  

  if Hardware::CPU.intel?
    sha256 "3d0e9fa8c32a059aa77927134c47e37321c685646f2516b07ea410f5e3e3c7f9"
    url "https://releases.mondoo.com/cnquery/9.3.4/cnquery_9.3.4_darwin_amd64.tar.gz"
  else
    sha256 "71eff4d18ba45173db627b485a212ce2f273c98f8a20a548bcf4250b6e3d97cd"
    url "https://releases.mondoo.com/cnquery/9.3.4/cnquery_9.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

