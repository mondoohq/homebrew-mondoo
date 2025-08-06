
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.66.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4591edb7c37607506d5ee4f185651bc159d636ce7e4b367481d6a7f959934cb4"
    url "https://releases.mondoo.com/cnspec/11.66.1/cnspec_11.66.1_darwin_amd64.tar.gz"
  else
    sha256 "96da24b45a4374a97c38d5eeeae60c6519877f4e3c23fab01a864482c2c1a75d"
    url "https://releases.mondoo.com/cnspec/11.66.1/cnspec_11.66.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

