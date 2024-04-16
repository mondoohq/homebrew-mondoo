
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.12.1"
  

  if Hardware::CPU.intel?
    sha256 "7c383489748dbed2689a150222767faea702673a0119632b80143615ab678c39"
    url "https://releases.mondoo.com/cnquery/10.12.1/cnquery_10.12.1_darwin_amd64.tar.gz"
  else
    sha256 "acf0e40dbc631990b0168092e66a6308b4ddbcdb8bf5d3c715a30356ed4aa395"
    url "https://releases.mondoo.com/cnquery/10.12.1/cnquery_10.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

