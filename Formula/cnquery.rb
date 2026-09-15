
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.39.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "29ad73871765c5b0053c7f3875c81164142af37b166deefb301118c198e6da50"
    url "https://releases.mondoo.com/cnspec/13.39.0/cnspec_13.39.0_darwin_amd64.tar.gz"
  else
    sha256 "856b31f92f9bfd9932b9411aa18c2161b5eb5429dd151c28a48b2bee5d6c087a"
    url "https://releases.mondoo.com/cnspec/13.39.0/cnspec_13.39.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

