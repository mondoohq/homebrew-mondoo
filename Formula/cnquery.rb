
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.2.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "e411c7c07afadeb8f584e7f70fa6c4da13b2d183826d16665c73c53b451d0442"
    url "https://releases.mondoo.com/cnspec/13.2.0/cnspec_13.2.0_darwin_amd64.tar.gz"
  else
    sha256 "6a28321de71ea4dd8e0ed60616905ca1c69e8ab3e269360cc39cd5b68a91e79a"
    url "https://releases.mondoo.com/cnspec/13.2.0/cnspec_13.2.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

