
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.67.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9dccd4b6e706f32e56b7d6ee2fd2885b559cba00e68c2e8a48964a8cdf913189"
    url "https://releases.mondoo.com/cnspec/11.67.1/cnspec_11.67.1_darwin_amd64.tar.gz"
  else
    sha256 "6cbe5ded72a7c052fb80b7d5fa7bdb2f4e27631039af760c2287a556084b6080"
    url "https://releases.mondoo.com/cnspec/11.67.1/cnspec_11.67.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

