
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.5.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "2ff20af084151d5e742d8c579923f0fdfa5758cdbde7260da538697b045704a9"
    url "https://releases.mondoo.com/cnspec/13.5.0/cnspec_13.5.0_darwin_amd64.tar.gz"
  else
    sha256 "3581f0f667e30e7bffaef864437a399b58362016eced351ffdeabb3b6a957713"
    url "https://releases.mondoo.com/cnspec/13.5.0/cnspec_13.5.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

