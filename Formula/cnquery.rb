
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.14.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "37981abbd69805c3c2667c97baafc5a8427bc5433a19c61f1cc729f17ace55a2"
    url "https://releases.mondoo.com/cnspec/14.14.0/cnspec_14.14.0_darwin_amd64.tar.gz"
  else
    sha256 "a5296d01e8500e8559d8e16bf3a5367f02ba5e4e0c500ea16d87822bf88cf716"
    url "https://releases.mondoo.com/cnspec/14.14.0/cnspec_14.14.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

