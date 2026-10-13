
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.6.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8a160e5e79c227abcfe5619d5e433911447387e1f7184c2d9792b841ba3d0069"
    url "https://releases.mondoo.com/cnspec/14.6.0/cnspec_14.6.0_darwin_amd64.tar.gz"
  else
    sha256 "c498c74639885f8d01d8923d006c953814bbb9394a10a4eb5cadd41326f78696"
    url "https://releases.mondoo.com/cnspec/14.6.0/cnspec_14.6.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

