
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.27.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "acd952a8c4a94f3305a2841fe4e0254d254975b314bbbdc2d441be0ce98494b5"
    url "https://releases.mondoo.com/cnspec/13.27.1/cnspec_13.27.1_darwin_amd64.tar.gz"
  else
    sha256 "8b7d62bab93acb3d0d5dcbd45aeb211be72a49bbd9faaadf3add9996e319ff89"
    url "https://releases.mondoo.com/cnspec/13.27.1/cnspec_13.27.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

