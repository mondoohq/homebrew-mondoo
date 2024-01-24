
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.0.1"
  

  if Hardware::CPU.intel?
    sha256 "abae14d0a57136ffbdd9bf80a3e3ae1643e817bff1f68bf0eb6b8e004bd4e169"
    url "https://releases.mondoo.com/cnquery/10.0.1/cnquery_10.0.1_darwin_amd64.tar.gz"
  else
    sha256 "c16bc7920294999d1c4206ba6adb6ffbb63f2241037b7252370548adffcabd03"
    url "https://releases.mondoo.com/cnquery/10.0.1/cnquery_10.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

