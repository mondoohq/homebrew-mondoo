
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.51.0"
  

  if Hardware::CPU.intel?
    sha256 "f0efe4f02f1eae198d3a3cecbccac2e71af3a342269f1d766346e560efd9dddc"
    url "https://releases.mondoo.com/cnquery/11.51.0/cnquery_11.51.0_darwin_amd64.tar.gz"
  else
    sha256 "8c5fa6da77fcc860031a0ef3905e1251fc62ad37bf8408582fe21ab8f40ed2e1"
    url "https://releases.mondoo.com/cnquery/11.51.0/cnquery_11.51.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

