
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.27.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "2004f65c1c4524e2762d3199c06df28afbfe712f6713146b1dceea9635715ef6"
    url "https://releases.mondoo.com/cnspec/13.27.3/cnspec_13.27.3_darwin_amd64.tar.gz"
  else
    sha256 "6dcd7a99194a68d7586cdc21a1f1e7aebf31ca8cab7635f181435c83dc80f879"
    url "https://releases.mondoo.com/cnspec/13.27.3/cnspec_13.27.3_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

