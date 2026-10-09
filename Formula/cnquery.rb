
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.5.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "dd11128fe351499be410bb0121bca07389b0bb5f5b55a6ebdde50d5d59666044"
    url "https://releases.mondoo.com/cnspec/14.5.0/cnspec_14.5.0_darwin_amd64.tar.gz"
  else
    sha256 "1d83d0570b58ca63ed4c209c88a8eb96c6ecf779ae2455c20304111155e95023"
    url "https://releases.mondoo.com/cnspec/14.5.0/cnspec_14.5.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

