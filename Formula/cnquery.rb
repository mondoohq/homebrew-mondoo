
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.11.0"
  

  if Hardware::CPU.intel?
    sha256 "2aa0a1226f4e99565957d51c1835047c09b0036ce732af4b319ba91d242fc66e"
    url "https://releases.mondoo.com/cnquery/12.11.0/cnquery_12.11.0_darwin_amd64.tar.gz"
  else
    sha256 "108b99583c043ad4bb492207170c1bedb0bfad28d37961cb2d6a3f36d1fc919e"
    url "https://releases.mondoo.com/cnquery/12.11.0/cnquery_12.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

