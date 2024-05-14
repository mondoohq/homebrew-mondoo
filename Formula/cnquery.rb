
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.4.1"
  

  if Hardware::CPU.intel?
    sha256 "5389683efeced91301891ef0e76d9d68f53436f30689ddb2b73fa5c7ace73c4a"
    url "https://releases.mondoo.com/cnquery/11.4.1/cnquery_11.4.1_darwin_amd64.tar.gz"
  else
    sha256 "fe878e4715e2cffe50a59f1de86bfc6fc3a9a1f77a671b7f39cdeb0097e33866"
    url "https://releases.mondoo.com/cnquery/11.4.1/cnquery_11.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

