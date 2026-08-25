
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.36.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "54e3d8d3849bb580dfba0d4f4280225b20e07895308d7cd3001c148f80c5c3bf"
    url "https://releases.mondoo.com/cnspec/13.36.0/cnspec_13.36.0_darwin_amd64.tar.gz"
  else
    sha256 "6a7c6a59bd14f6dabf1d65f33349e4c24a2a2bffc4b899c29847c709b4f7e274"
    url "https://releases.mondoo.com/cnspec/13.36.0/cnspec_13.36.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

