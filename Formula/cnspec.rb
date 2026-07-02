
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.27.2"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "34921b850ca68d2e463cc3db9cc80d4bd89a8192af113e5880e892ea71632da6"
    url "https://releases.mondoo.com/cnspec/13.27.2/cnspec_13.27.2_darwin_amd64.tar.gz"
  else
    sha256 "3cd141b5eb8b1dde10e5e2d4d141bf21251788fea6aa05d68f261fdf71fe87d4"
    url "https://releases.mondoo.com/cnspec/13.27.2/cnspec_13.27.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

