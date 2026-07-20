
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.30.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "51fcab12ccf780fdbeb2761efd47aab6fe8536616fef87c64e7af9769c7f2dc1"
    url "https://releases.mondoo.com/cnspec/13.30.0/cnspec_13.30.0_darwin_amd64.tar.gz"
  else
    sha256 "afe8ba7fa1cc3029c92f9d2bdfa06ca621d5e2bb857735d6ce49d18b6d7be14c"
    url "https://releases.mondoo.com/cnspec/13.30.0/cnspec_13.30.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

