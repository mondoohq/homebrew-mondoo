
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.35.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "f49ed5c784aa8535058676d7b64e1ca6d2b099dad477ce8bb694e98b93144168"
    url "https://releases.mondoo.com/cnspec/13.35.0/cnspec_13.35.0_darwin_amd64.tar.gz"
  else
    sha256 "bf104f0d9cf58e8e57a1548f6c34a5f83de66bec37ecf9ca29488e1ce2a245c7"
    url "https://releases.mondoo.com/cnspec/13.35.0/cnspec_13.35.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

