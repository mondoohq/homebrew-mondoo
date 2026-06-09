
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.22.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "6b9d06353321dec2aeecdfec2b2edac4208e74b6d2c7800338a0e7a1de8be904"
    url "https://releases.mondoo.com/cnspec/13.22.0/cnspec_13.22.0_darwin_amd64.tar.gz"
  else
    sha256 "49792282ef11ef30e07787f0a039af2a40e664126b93b982ff3ad3481d6f110b"
    url "https://releases.mondoo.com/cnspec/13.22.0/cnspec_13.22.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

