
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.7.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b3325c14f7dae6a361208f65452abae2585585813289d09d28ea5fccb25bc9e3"
    url "https://releases.mondoo.com/cnspec/9.7.0/cnspec_9.7.0_darwin_amd64.tar.gz"
  else
    sha256 "2c9429ed8002fe5da04ce0fee40da966ec5b47cd9813ead57960dd85c32e3a3f"
    url "https://releases.mondoo.com/cnspec/9.7.0/cnspec_9.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

