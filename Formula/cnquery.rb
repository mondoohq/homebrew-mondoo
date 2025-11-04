
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.8.0"
  

  if Hardware::CPU.intel?
    sha256 "eb1aa324e9b9bd9ca6d8650eff9c9e1b3ad01c702522b84257affb0ab548066d"
    url "https://releases.mondoo.com/cnquery/12.8.0/cnquery_12.8.0_darwin_amd64.tar.gz"
  else
    sha256 "8972798a0f06e542867c64ba1498c18a524ee3642f185360b1a5f138c70f0ed7"
    url "https://releases.mondoo.com/cnquery/12.8.0/cnquery_12.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

