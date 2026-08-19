
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.35.2"
  

  if Hardware::CPU.intel?
    sha256 "083dc138881756c5abaa49cb874036466efac78031667a18ecd022e87110c3bf"
    url "https://releases.mondoo.com/mql/13.35.2/mql_13.35.2_darwin_amd64.tar.gz"
  else
    sha256 "ae82ce8f554df934edee5e114f7d1c6737c79f0487de6b7f71cce8c002ef6e3c"
    url "https://releases.mondoo.com/mql/13.35.2/mql_13.35.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

