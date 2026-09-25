
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "14.1.0"
  

  if Hardware::CPU.intel?
    sha256 "8cf9a6946815eaa2d270bee5ee308435768d41e926a50d48c354cb5b06cbd407"
    url "https://releases.mondoo.com/mql/14.1.0/mql_14.1.0_darwin_amd64.tar.gz"
  else
    sha256 "a413d9897f66547a568e712ef66bab6912a1b82e374d4a7caad83d93d9798d6c"
    url "https://releases.mondoo.com/mql/14.1.0/mql_14.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

