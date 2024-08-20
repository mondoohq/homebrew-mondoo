
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.18.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d13fd3954148cebbc531ebc0a21d351fa61647c67d6597195355a01f461ef0d1"
    url "https://releases.mondoo.com/cnspec/11.18.0/cnspec_11.18.0_darwin_amd64.tar.gz"
  else
    sha256 "7dba59e72e0828cbfe2ec2f5b6f19cdb2691bc2d00fba03f345ee34f436d554c"
    url "https://releases.mondoo.com/cnspec/11.18.0/cnspec_11.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

