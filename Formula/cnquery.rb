
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.27.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "daa3a85da22397403d7b4c7dc32ccbb8376279312a12599ce1034c8e12377bb5"
    url "https://releases.mondoo.com/cnspec/13.27.0/cnspec_13.27.0_darwin_amd64.tar.gz"
  else
    sha256 "9cfac860713df72b9e9f96149c5a724ed24dd30b8d7a93ba5ebdbe88f5da0863"
    url "https://releases.mondoo.com/cnspec/13.27.0/cnspec_13.27.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

