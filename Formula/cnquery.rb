
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.8.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "805dcfe507fd4a04bb8b841f92711e7a272c889afec4d3d215fd6bdcd573f65b"
    url "https://releases.mondoo.com/cnspec/13.8.0/cnspec_13.8.0_darwin_amd64.tar.gz"
  else
    sha256 "9484fd0d41e2eaed0cd6709cdc66719b34ef07db60b729abbe0754cb50998bd8"
    url "https://releases.mondoo.com/cnspec/13.8.0/cnspec_13.8.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

