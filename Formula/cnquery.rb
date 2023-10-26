
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.5"
  

  if Hardware::CPU.intel?
    sha256 "21cc9ba99c741fdda49ea7f40b840437b91fb3121ae0c1a5c26ad0763ad3ab09"
    url "https://releases.mondoo.com/cnquery/9.3.5/cnquery_9.3.5_darwin_amd64.tar.gz"
  else
    sha256 "ebb361b5ce02f4db956887adb8825eb81482da905af8f14d75208622d0b3c148"
    url "https://releases.mondoo.com/cnquery/9.3.5/cnquery_9.3.5_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

