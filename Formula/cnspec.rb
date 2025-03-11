
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.45.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "cc26a317d049d776a14011bdc11c4d41c35955332793963aa1f6bb489af9f804"
    url "https://releases.mondoo.com/cnspec/11.45.0/cnspec_11.45.0_darwin_amd64.tar.gz"
  else
    sha256 "4d57390a038c42599dcac59ada984f6733d38d4d4b63816dd99360af7e23d494"
    url "https://releases.mondoo.com/cnspec/11.45.0/cnspec_11.45.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

