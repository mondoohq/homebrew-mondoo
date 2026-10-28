
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.9.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "81a21c93a7017931fc8102d8f304f442b6a6e6b855664cc149eea3f4b2b35cbb"
    url "https://releases.mondoo.com/cnspec/14.9.1/cnspec_14.9.1_darwin_amd64.tar.gz"
  else
    sha256 "706b2882fe978ca2dbdcda55eaa77a109f3519076f6a56d1d1f9a22195df2ae6"
    url "https://releases.mondoo.com/cnspec/14.9.1/cnspec_14.9.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

