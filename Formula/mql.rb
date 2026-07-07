
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.28.0"
  

  if Hardware::CPU.intel?
    sha256 "3e970aa9795aff0274a606d4878373f955e1eee81118234ec58b2885f29b6366"
    url "https://releases.mondoo.com/mql/13.28.0/mql_13.28.0_darwin_amd64.tar.gz"
  else
    sha256 "4a9fa64f71d3fca9b25711ba9cb94f7b44baff3245f6c5884319da9cfba50db9"
    url "https://releases.mondoo.com/mql/13.28.0/mql_13.28.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

