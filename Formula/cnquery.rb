
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.4.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "71a4f89d73b3e84223d788fc00532a971b6b1a0bd6f025dc2190391b2e0a3916"
    url "https://releases.mondoo.com/cnspec/13.4.1/cnspec_13.4.1_darwin_amd64.tar.gz"
  else
    sha256 "7e7693a7bffdab3ffc3eced48e46bb77049c17afe3e8e0306cfdf62b75bba6f0"
    url "https://releases.mondoo.com/cnspec/13.4.1/cnspec_13.4.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

