
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.3.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "cdb87fe9d39362b7c0731e8560e322762e3fffb022bb7cbbffe94fb89051f2a6"
    url "https://releases.mondoo.com/cnspec/14.3.1/cnspec_14.3.1_darwin_amd64.tar.gz"
  else
    sha256 "787bb54930e059ad8248e7801f3d6e981146010e081aaaa6f245f7b6b77fed19"
    url "https://releases.mondoo.com/cnspec/14.3.1/cnspec_14.3.1_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

