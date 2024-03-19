
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.8.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3b773748028db946af2184cd8cbdbb5fdb2339ca08f1779836240f23ca435612"
    url "https://releases.mondoo.com/cnspec/10.8.0/cnspec_10.8.0_darwin_amd64.tar.gz"
  else
    sha256 "b0d8dc311c3832d9d255fa014923f375aec741d9c65f232024c93b814f73b104"
    url "https://releases.mondoo.com/cnspec/10.8.0/cnspec_10.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

