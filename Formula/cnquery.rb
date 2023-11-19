
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.7.1"
  

  if Hardware::CPU.intel?
    sha256 "324436ce30b50f359ba03412f7cbac5e882815d28d57a38bd0083810fb1eac0c"
    url "https://releases.mondoo.com/cnquery/9.7.1/cnquery_9.7.1_darwin_amd64.tar.gz"
  else
    sha256 "7aa1ab83b9906aec8eccde1ffcf91464f7138f12e6f39542b0f584b43d982e53"
    url "https://releases.mondoo.com/cnquery/9.7.1/cnquery_9.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

