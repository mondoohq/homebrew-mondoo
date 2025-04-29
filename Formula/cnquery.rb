
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.52.0"
  

  if Hardware::CPU.intel?
    sha256 "7dd0ab4f1be319f120e3357649ca60eecf765eab9f5f145716547c1b7b399e84"
    url "https://releases.mondoo.com/cnquery/11.52.0/cnquery_11.52.0_darwin_amd64.tar.gz"
  else
    sha256 "f31e497a3b001456ecc9a327513fbf50e49d023fafa0a0a20201d2971eaee6b3"
    url "https://releases.mondoo.com/cnquery/11.52.0/cnquery_11.52.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

