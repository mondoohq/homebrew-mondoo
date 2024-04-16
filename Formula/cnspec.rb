
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.12.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d6203d9056f99c9304f2e5f0ce06bd9cc2c5dea4fdfeec62c46459bd1021bd49"
    url "https://releases.mondoo.com/cnspec/10.12.2/cnspec_10.12.2_darwin_amd64.tar.gz"
  else
    sha256 "7b80554cd8a014fddc4534f2effa37727443f88a982983505df7cffb8d7aea49"
    url "https://releases.mondoo.com/cnspec/10.12.2/cnspec_10.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

