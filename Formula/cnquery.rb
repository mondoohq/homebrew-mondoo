
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.27.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "34921b850ca68d2e463cc3db9cc80d4bd89a8192af113e5880e892ea71632da6"
    url "https://releases.mondoo.com/cnspec/13.27.2/cnspec_13.27.2_darwin_amd64.tar.gz"
  else
    sha256 "3cd141b5eb8b1dde10e5e2d4d141bf21251788fea6aa05d68f261fdf71fe87d4"
    url "https://releases.mondoo.com/cnspec/13.27.2/cnspec_13.27.2_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

