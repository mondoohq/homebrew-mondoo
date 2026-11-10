
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.11.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "78efad1e8bf55727d031cb03974f4d5eb108c89d224309279dbc713aa20c721f"
    url "https://releases.mondoo.com/cnspec/14.11.1/cnspec_14.11.1_darwin_amd64.tar.gz"
  else
    sha256 "34516eb3c5c5ca651833e8049e04f75e0bcf96aa364177e6cc2c58147ff20f48"
    url "https://releases.mondoo.com/cnspec/14.11.1/cnspec_14.11.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

