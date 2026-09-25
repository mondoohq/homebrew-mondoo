
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.1.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8eb648cf4377e2f8cf7f428c4a163f3f23907ddd366d5c73012fefcfff601036"
    url "https://releases.mondoo.com/cnspec/14.1.0/cnspec_14.1.0_darwin_amd64.tar.gz"
  else
    sha256 "faa097174b23efb537a3aea52905041a680498cb526322d3face25029c515956"
    url "https://releases.mondoo.com/cnspec/14.1.0/cnspec_14.1.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

