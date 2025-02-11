
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.41.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fb51d08093efbcc7299d4f40f98ffc1f1539404bf5a48784612ffbc7bb7aa5e7"
    url "https://releases.mondoo.com/cnspec/11.41.0/cnspec_11.41.0_darwin_amd64.tar.gz"
  else
    sha256 "9a75584aa9531713a4e243bdd3ea9c28207580aae9a54e810f23f9cb216c9ec7"
    url "https://releases.mondoo.com/cnspec/11.41.0/cnspec_11.41.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

