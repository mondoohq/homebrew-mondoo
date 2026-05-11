
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.8.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "30a05241d545b48eace6536bb58daadfa9f3b9a6b003b5bafe8a847e51d19964"
    url "https://releases.mondoo.com/cnspec/13.8.3/cnspec_13.8.3_darwin_amd64.tar.gz"
  else
    sha256 "f238307f28ae22affef44a11061138a998b19b03bc3c652fe1ba7dd933dfa6ff"
    url "https://releases.mondoo.com/cnspec/13.8.3/cnspec_13.8.3_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

