
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.34.0"
  

  if Hardware::CPU.intel?
    sha256 "cabda09340d27cbc6391571af93ca832ca84e9af9e96c2f50058961cd77e1c76"
    url "https://releases.mondoo.com/cnquery/11.34.0/cnquery_11.34.0_darwin_amd64.tar.gz"
  else
    sha256 "33cf7fa66b86d7c91349d57de9e886b63ba351df98dc7f0b8ee2165106818d8e"
    url "https://releases.mondoo.com/cnquery/11.34.0/cnquery_11.34.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

