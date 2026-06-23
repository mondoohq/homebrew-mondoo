
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.24.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7da499f527939ddab9b711f9d864523aa67cca34362824ca9d2b11fca798968a"
    url "https://releases.mondoo.com/cnspec/13.24.0/cnspec_13.24.0_darwin_amd64.tar.gz"
  else
    sha256 "371b2f47d9bff03f7dec5520895fa08286740482f916397044ae9686e6510ddb"
    url "https://releases.mondoo.com/cnspec/13.24.0/cnspec_13.24.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

