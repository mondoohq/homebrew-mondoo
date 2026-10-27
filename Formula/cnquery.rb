
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.9.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "aae8f77101a4bb6599e5a6c00f5be6f13a6327446ae81f5278dc7331fc0702a5"
    url "https://releases.mondoo.com/cnspec/14.9.0/cnspec_14.9.0_darwin_amd64.tar.gz"
  else
    sha256 "b72dc24e16d3e5bf6ec5cf89f932eb3cd7711ea662c5286cfd4eb13cff6e933b"
    url "https://releases.mondoo.com/cnspec/14.9.0/cnspec_14.9.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

