
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.14.1"
  

  if Hardware::CPU.intel?
    sha256 "d160af45b797273e449d1e2c8e9f349b292bc5aaf240b0396b958fe5353d7751"
    url "https://releases.mondoo.com/cnquery/11.14.1/cnquery_11.14.1_darwin_amd64.tar.gz"
  else
    sha256 "4af7473ba7b97ffecf871f722a3138b17937b8138014cbb3757efec40b80c11b"
    url "https://releases.mondoo.com/cnquery/11.14.1/cnquery_11.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

