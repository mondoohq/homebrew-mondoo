
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.3.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8de8ec140b028d6cceec35d3f2b192d8444a757b78b08029942d4218ec08ae80"
    url "https://releases.mondoo.com/cnspec/13.3.2/cnspec_13.3.2_darwin_amd64.tar.gz"
  else
    sha256 "82665523cc87e8692391146ff01d74156b2e4d36195c649cd45e01bdefb47fd8"
    url "https://releases.mondoo.com/cnspec/13.3.2/cnspec_13.3.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

