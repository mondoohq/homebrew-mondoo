
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.4.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "d28041a1d3b233a72fcd54270baca9b6d118652ac994af3d146cef3800031a58"
    url "https://releases.mondoo.com/cnspec/13.4.0/cnspec_13.4.0_darwin_amd64.tar.gz"
  else
    sha256 "33e3cc85efe9d83c48ddb593f2c0fc5f14949f047052b1de99fe6dbc902ec9aa"
    url "https://releases.mondoo.com/cnspec/13.4.0/cnspec_13.4.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

