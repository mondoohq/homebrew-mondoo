
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.3.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "cdb87fe9d39362b7c0731e8560e322762e3fffb022bb7cbbffe94fb89051f2a6"
    url "https://releases.mondoo.com/cnspec/14.3.1/cnspec_14.3.1_darwin_amd64.tar.gz"
  else
    sha256 "787bb54930e059ad8248e7801f3d6e981146010e081aaaa6f245f7b6b77fed19"
    url "https://releases.mondoo.com/cnspec/14.3.1/cnspec_14.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

