
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.44.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3c2639f97e055de9ed47660534d996cfeb6b15da365622122332388b2eb27cff"
    url "https://releases.mondoo.com/cnspec/11.44.0/cnspec_11.44.0_darwin_amd64.tar.gz"
  else
    sha256 "701b1ff1dc0444328b383ace99383437f82add3fb6ca9388d0644f917bb9b123"
    url "https://releases.mondoo.com/cnspec/11.44.0/cnspec_11.44.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

