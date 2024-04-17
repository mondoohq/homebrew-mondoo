
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.0.1"
  

  if Hardware::CPU.intel?
    sha256 "477b94eb14a59121dacf8c34bb476cfbb67630b34946a7bdeb7b10a00b2d759f"
    url "https://releases.mondoo.com/cnquery/11.0.1/cnquery_11.0.1_darwin_amd64.tar.gz"
  else
    sha256 "31f815a91fd439e46f16a41f017944b393df4b085b44f598d4d637bc5f1b2b8c"
    url "https://releases.mondoo.com/cnquery/11.0.1/cnquery_11.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

