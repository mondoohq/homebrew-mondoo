
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.1.0"
  

  if Hardware::CPU.intel?
    sha256 "e373229ad4451fefd9183b8fa0467f391c96730caf3795e8961184f2eaf11336"
    url "https://releases.mondoo.com/cnquery/11.1.0/cnquery_11.1.0_darwin_amd64.tar.gz"
  else
    sha256 "42d177738d6fb9e05971ca125c3e4d5654bf10ab3b02af9ea3f08e8456051a2b"
    url "https://releases.mondoo.com/cnquery/11.1.0/cnquery_11.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

