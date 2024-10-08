
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.25.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "73177ad8a88ab09077abc30cb1fd2a1ea00b23fc1635bc6ce810b4bcb74d18c3"
    url "https://releases.mondoo.com/cnspec/11.25.0/cnspec_11.25.0_darwin_amd64.tar.gz"
  else
    sha256 "8f6b9abcbaaa53f53946d938c93b20ffc6b11a8e6350bbf76ed25978e90ef8ed"
    url "https://releases.mondoo.com/cnspec/11.25.0/cnspec_11.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

