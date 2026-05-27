
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.20.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "185be0cbb5fb5a58d1f71982e469f56d554d5ca596c76d39496b38abe1d8b255"
    url "https://releases.mondoo.com/cnspec/13.20.1/cnspec_13.20.1_darwin_amd64.tar.gz"
  else
    sha256 "13001e65bc90c24e6f42563b88e49b832011bc32f03ec8a36328b1ca31fa7fd3"
    url "https://releases.mondoo.com/cnspec/13.20.1/cnspec_13.20.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

