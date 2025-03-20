
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.46.2"
  

  if Hardware::CPU.intel?
    sha256 "3738c06ae4eaff57477d63029d17157c814d0b0ca6755b2cf3b2dbae1fdb4f52"
    url "https://releases.mondoo.com/cnquery/11.46.2/cnquery_11.46.2_darwin_amd64.tar.gz"
  else
    sha256 "3b3f645c007dfad7b2da668cf000371d7e75eef630856c0be61d23928c816ab4"
    url "https://releases.mondoo.com/cnquery/11.46.2/cnquery_11.46.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

