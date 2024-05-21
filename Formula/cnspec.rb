
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.5.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "78d87711a881ec37d3d72089856a145f72786119c1de383d92bbab6e2f4ba862"
    url "https://releases.mondoo.com/cnspec/11.5.0/cnspec_11.5.0_darwin_amd64.tar.gz"
  else
    sha256 "85a35e3d0c5ecaaccb41d138ce827283f900b4856b57cbb899200363b78c8df9"
    url "https://releases.mondoo.com/cnspec/11.5.0/cnspec_11.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

