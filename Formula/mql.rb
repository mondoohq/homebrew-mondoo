
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.8.0"
  

  if Hardware::CPU.intel?
    sha256 "4418b62f6ec6c5b9dcb0f1c281030e57fa6b623a362b8ffe54e427824c8003d4"
    url "https://releases.mondoo.com/mql/13.8.0/mql_13.8.0_darwin_amd64.tar.gz"
  else
    sha256 "5ef6399eef13af6f685136908082ba83801d502ddcfd1c7aa56d2998a251321d"
    url "https://releases.mondoo.com/mql/13.8.0/mql_13.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

