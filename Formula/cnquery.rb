
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.12.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "ce3802c602efb377a3ce9156fe92471b7261bf157e43d17e626b58e757aa5f51"
    url "https://releases.mondoo.com/cnspec/13.12.0/cnspec_13.12.0_darwin_amd64.tar.gz"
  else
    sha256 "5e3e8df6e066f5deb2be295afa6af120402dbe27fffce2a47d9fd3ec7251e1d4"
    url "https://releases.mondoo.com/cnspec/13.12.0/cnspec_13.12.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

