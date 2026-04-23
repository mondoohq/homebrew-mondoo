
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.6.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "9a07a773a97f29ac8a2f16718299a86ecc3c2837775b5366164218618c33d37a"
    url "https://releases.mondoo.com/cnspec/13.6.0/cnspec_13.6.0_darwin_amd64.tar.gz"
  else
    sha256 "d29c6a5c042ed6105b72097b934d13287f9bf22ce5eaf0d144f4750915aa9a8d"
    url "https://releases.mondoo.com/cnspec/13.6.0/cnspec_13.6.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

