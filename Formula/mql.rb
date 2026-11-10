
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.11.2"
  

  if Hardware::CPU.intel?
    sha256 "239e0210e49f1a9b56ebcba1f30b95c0ff626c716f143d42166ef0489e413221"
    url "https://releases.mondoo.com/mql/14.11.2/mql_14.11.2_darwin_amd64.tar.gz"
  else
    sha256 "86e2bedf0dd2a0a73cde4a3e5ec21c299a2a3e5183bb6a727e694e2ccd01e84c"
    url "https://releases.mondoo.com/mql/14.11.2/mql_14.11.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

