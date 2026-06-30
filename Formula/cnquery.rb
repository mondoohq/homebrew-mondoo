
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.26.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "c1e9e788fd37ee62b11d2fc41f668ac3c4d75a74756cc64ea61840c57c4fa47a"
    url "https://releases.mondoo.com/cnspec/13.26.0/cnspec_13.26.0_darwin_amd64.tar.gz"
  else
    sha256 "0c177794311388da3d86a4fc52b50c9fbafe24432de198d04d560e294e34ace6"
    url "https://releases.mondoo.com/cnspec/13.26.0/cnspec_13.26.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

