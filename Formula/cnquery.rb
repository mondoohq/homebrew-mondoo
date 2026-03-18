
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.1.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "c62b873e8c212d1410397abde3cae8f6a335d6fe8749f27fe9fde874bdba2815"
    url "https://releases.mondoo.com/cnspec/13.1.1/cnspec_13.1.1_darwin_amd64.tar.gz"
  else
    sha256 "5f33e1495f332a6300601aced81975216a341e9529bd33fd5d1c958b3217231a"
    url "https://releases.mondoo.com/cnspec/13.1.1/cnspec_13.1.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

