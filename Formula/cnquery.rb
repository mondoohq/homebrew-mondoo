
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.38.0"
  

  if Hardware::CPU.intel?
    sha256 "83682e9b64ca0aa8f74cb30ef5f24b364aa8b8f8c60772a0234765fc7d273cac"
    url "https://releases.mondoo.com/cnquery/11.38.0/cnquery_11.38.0_darwin_amd64.tar.gz"
  else
    sha256 "e2bb3f5f964046ad032560c4b5da58eb12eb14e942c5d9a0038d2e1b5b088dbc"
    url "https://releases.mondoo.com/cnquery/11.38.0/cnquery_11.38.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

