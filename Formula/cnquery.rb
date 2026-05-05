
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.8.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8fedd0007ba2214ffbe2a7c4cd84ae06e1b6a2f3a858361ee46dea490f32900f"
    url "https://releases.mondoo.com/cnspec/13.8.1/cnspec_13.8.1_darwin_amd64.tar.gz"
  else
    sha256 "328e9f3bbc95efebfc47aeedf0536afdf9c5cedb2b36cd76e9cb4e23a122d1a2"
    url "https://releases.mondoo.com/cnspec/13.8.1/cnspec_13.8.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

