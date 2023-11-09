
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.6.1"
  

  if Hardware::CPU.intel?
    sha256 "f72bcca500f82c79208efcccf6833124684b95f32babbe14d9a795b0be0ac7d7"
    url "https://releases.mondoo.com/cnquery/9.6.1/cnquery_9.6.1_darwin_amd64.tar.gz"
  else
    sha256 "602be00863375fd6bdd83391a3a22556172b25cd493c7ebf92ebd7154403572e"
    url "https://releases.mondoo.com/cnquery/9.6.1/cnquery_9.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

