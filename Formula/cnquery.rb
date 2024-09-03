
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.20.1"
  

  if Hardware::CPU.intel?
    sha256 "c245a0717c669e5390f529d00d9a8798ea8dc7b2567909b489f387f992ff5051"
    url "https://releases.mondoo.com/cnquery/11.20.1/cnquery_11.20.1_darwin_amd64.tar.gz"
  else
    sha256 "be75292bd5cde22c441b67ebe86953877048769d9de6d6ef82b756119e4eb9f9"
    url "https://releases.mondoo.com/cnquery/11.20.1/cnquery_11.20.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

