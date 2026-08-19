
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.35.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "30b41ea89ead859f4271f8c9c4e984a1402b3bc8fd0ec33f3fcae85e2085e451"
    url "https://releases.mondoo.com/cnspec/13.35.2/cnspec_13.35.2_darwin_amd64.tar.gz"
  else
    sha256 "031b3ea13f1845ffc530681a1126dfdc39ab7949c10e9aeb9c61cd0b13efd4aa"
    url "https://releases.mondoo.com/cnspec/13.35.2/cnspec_13.35.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

