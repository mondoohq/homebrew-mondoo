
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.5.3"
  

  if Hardware::CPU.intel?
    sha256 "67c21a3bb8d22b575688bd0497a5588e7404b899dcd692cb3b27af12bf77de33"
    url "https://releases.mondoo.com/cnquery/9.5.3/cnquery_9.5.3_darwin_amd64.tar.gz"
  else
    sha256 "0ae606110533f5137c76e0cca8f2e561353be8e65afe9e4b54d1585cca187cc9"
    url "https://releases.mondoo.com/cnquery/9.5.3/cnquery_9.5.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

