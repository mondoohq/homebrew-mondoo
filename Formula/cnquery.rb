
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.31.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7cc8159beb0b00096df1c54dbf0860e177a1ebddd67b9efe38e3fbbb4c2f2ae1"
    url "https://releases.mondoo.com/cnspec/13.31.1/cnspec_13.31.1_darwin_amd64.tar.gz"
  else
    sha256 "c2f3bf64c807fa992b2aa8a4f7d9958cb7e6b9b21d3bbfc5e1bfb88a7f1964fd"
    url "https://releases.mondoo.com/cnspec/13.31.1/cnspec_13.31.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

