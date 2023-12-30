
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.12.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "932b1a1f89487b9479ff820c856444bf0be86e552c6274c5a37a861dbb3ff94b"
    url "https://releases.mondoo.com/cnspec/9.12.2/cnspec_9.12.2_darwin_amd64.tar.gz"
  else
    sha256 "d6d268bbed867bd17f6231b1b01299db7968fb73486aaf0268b0a71380bdae7c"
    url "https://releases.mondoo.com/cnspec/9.12.2/cnspec_9.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

