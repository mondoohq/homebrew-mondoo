
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.4.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "dfdde6760c02d9efce7ad3e33704ade8e7fc2ac9524fefc8a6125c6409792a08"
    url "https://releases.mondoo.com/cnspec/9.4.0/cnspec_9.4.0_darwin_amd64.tar.gz"
  else
    sha256 "6205d640ab892a59af90a4ecd98c6ae7d8ed1a672e8711cef2c47e0fa9e09b5c"
    url "https://releases.mondoo.com/cnspec/9.4.0/cnspec_9.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

