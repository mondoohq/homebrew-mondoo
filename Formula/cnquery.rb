
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.28.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "aa6a5bfa73ed304b1951504d68140981ee60a078707e63417dcae21d8db12c8b"
    url "https://releases.mondoo.com/cnspec/13.28.0/cnspec_13.28.0_darwin_amd64.tar.gz"
  else
    sha256 "a1916da5132172c27657c6246022ea36fc75bd19a308bace675eb46e174fc910"
    url "https://releases.mondoo.com/cnspec/13.28.0/cnspec_13.28.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

