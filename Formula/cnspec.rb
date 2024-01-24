
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.0.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "c762e1cddbe562b03716a822dd02890a854a37eef439433990d58737475d723d"
    url "https://releases.mondoo.com/cnspec/10.0.2/cnspec_10.0.2_darwin_amd64.tar.gz"
  else
    sha256 "2c16fe9316f5ab3d089afa5ad87e067ab8e9f03216f522ffe71ab7021454e421"
    url "https://releases.mondoo.com/cnspec/10.0.2/cnspec_10.0.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

