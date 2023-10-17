
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.2.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "59539f0f6dbec655422220d23cfec44eaaea5a699765101e71b530886bc47cf2"
    url "https://releases.mondoo.com/cnspec/9.2.1/cnspec_9.2.1_darwin_amd64.tar.gz"
  else
    sha256 "f0ca50644a74634535b7efa81a5c9a1dccf8eb10679b03a10b5055b5fae901d5"
    url "https://releases.mondoo.com/cnspec/9.2.1/cnspec_9.2.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

