
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.2.0"
  

  if Hardware::CPU.intel?
    sha256 "f40d4c39f3494120020e16568c779b1dd87cec66387eff1b9e129b0c9c780e91"
    url "https://releases.mondoo.com/mql/13.2.0/mql_13.2.0_darwin_amd64.tar.gz"
  else
    sha256 "c898098ece990b4ec31130f6c647ab1ca76a0934b88e84a42d66400504c741cf"
    url "https://releases.mondoo.com/mql/13.2.0/mql_13.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

