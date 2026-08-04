
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.32.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "eb5d36081157209908a6f224e62de122cad3fea35729a181137db6d04fb98884"
    url "https://releases.mondoo.com/cnspec/13.32.1/cnspec_13.32.1_darwin_amd64.tar.gz"
  else
    sha256 "a94ffd45afb8aa4741d745065a6b00888ef9217b69d860d61b6533acbde6f363"
    url "https://releases.mondoo.com/cnspec/13.32.1/cnspec_13.32.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

