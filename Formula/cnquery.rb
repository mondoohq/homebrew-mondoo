
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.32.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "72821458715d28991e0e1d636d78a726919e30cd0ad2ddbb0abc40c8a07a8739"
    url "https://releases.mondoo.com/cnspec/13.32.0/cnspec_13.32.0_darwin_amd64.tar.gz"
  else
    sha256 "85ac0fda03d3d12da995a541a1ef206769625a57555501a086a36aac3293d39a"
    url "https://releases.mondoo.com/cnspec/13.32.0/cnspec_13.32.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

