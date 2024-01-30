
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.1.0"
  

  if Hardware::CPU.intel?
    sha256 "436541a19f4729283472ab1f575063c188c98bd1f1a33adbd4e2401fcaad32e8"
    url "https://releases.mondoo.com/cnquery/10.1.0/cnquery_10.1.0_darwin_amd64.tar.gz"
  else
    sha256 "609274e40394b4130d0389e37f8b92403d58aa4314460019ee4241a557258e38"
    url "https://releases.mondoo.com/cnquery/10.1.0/cnquery_10.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

