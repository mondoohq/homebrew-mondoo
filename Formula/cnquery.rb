
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.9.0"
  

  if Hardware::CPU.intel?
    sha256 "4e140a0f3a924e78d6e99095f914951b217ae24efbea188b9a0e55c90b1feb6a"
    url "https://releases.mondoo.com/cnquery/12.9.0/cnquery_12.9.0_darwin_amd64.tar.gz"
  else
    sha256 "19a55a985a147bfb658ce8221f921c053f6ac1e82b5ea9bc894ccaa59d33ef38"
    url "https://releases.mondoo.com/cnquery/12.9.0/cnquery_12.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

