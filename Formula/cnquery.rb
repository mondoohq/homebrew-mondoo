
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.19.2"
  

  if Hardware::CPU.intel?
    sha256 "25be1db0fcffc2aa59d81c52540289a55a5e6dc054358602c6d4ee03b6691b3e"
    url "https://releases.mondoo.com/cnquery/12.19.2/cnquery_12.19.2_darwin_amd64.tar.gz"
  else
    sha256 "96d36b8ade729f5e66b7e46f673b81058b308928042c9202964c246d690bea5f"
    url "https://releases.mondoo.com/cnquery/12.19.2/cnquery_12.19.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

