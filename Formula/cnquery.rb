
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.19.0"
  

  if Hardware::CPU.intel?
    sha256 "88e301cc4dd062a124bb1e124e8b8a8f17323c04f89eb96e256caafd09eaeadc"
    url "https://releases.mondoo.com/cnquery/11.19.0/cnquery_11.19.0_darwin_amd64.tar.gz"
  else
    sha256 "ecb7d115ebd4c63eadc05055c68b4da4646edfba2f1e0ca1c33a377d02a5c9b4"
    url "https://releases.mondoo.com/cnquery/11.19.0/cnquery_11.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

