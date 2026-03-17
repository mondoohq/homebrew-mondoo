
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.1.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "dd18b25f0d7d02134c0b8162afaac7e6e94d6ba8614d5d7b4d1d5d4147a95e0c"
    url "https://releases.mondoo.com/cnspec/13.1.0/cnspec_13.1.0_darwin_amd64.tar.gz"
  else
    sha256 "28a208634c9d122fbdad2f036d777587861a6d7f48c05c8d184d1afedbaf5c98"
    url "https://releases.mondoo.com/cnspec/13.1.0/cnspec_13.1.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

