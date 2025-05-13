
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.54.0"
  

  if Hardware::CPU.intel?
    sha256 "e5c2763eece48683c88e36169ef77203f1f6c30859f2d720a60437c2f18ddc3e"
    url "https://releases.mondoo.com/cnquery/11.54.0/cnquery_11.54.0_darwin_amd64.tar.gz"
  else
    sha256 "f8e23891822d50ba4a7804e6cc1ab9c3db7eab5c3bedb9352283191902f4f3ea"
    url "https://releases.mondoo.com/cnquery/11.54.0/cnquery_11.54.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

