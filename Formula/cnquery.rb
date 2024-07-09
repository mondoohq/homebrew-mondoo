
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.12.1"
  

  if Hardware::CPU.intel?
    sha256 "d30a5ddf7601f2a75a8dea95faeb94f402c2c5e6c6efaa5b963301e9a5f70aec"
    url "https://releases.mondoo.com/cnquery/11.12.1/cnquery_11.12.1_darwin_amd64.tar.gz"
  else
    sha256 "1828a8e8f1ab9b0fd4580f1544e07cd0c20f5e638bd0612a3b4899db40781f86"
    url "https://releases.mondoo.com/cnquery/11.12.1/cnquery_11.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

