
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.0.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "825dcee2bf5018bb9044acc0e9a2fde58906cdfd668c85227e41dc625fd23f5f"
    url "https://releases.mondoo.com/cnspec/13.0.1/cnspec_13.0.1_darwin_amd64.tar.gz"
  else
    sha256 "2b00c54642e2f70a9ba49772f81204a41d766c144cba860c9c2aa95a1584b8d8"
    url "https://releases.mondoo.com/cnspec/13.0.1/cnspec_13.0.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

