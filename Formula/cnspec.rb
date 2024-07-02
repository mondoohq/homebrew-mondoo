
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.11.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fa707561003d1c33f95e9f341cf6b8aa2223377a2c66da0aebea29f272fe17fb"
    url "https://releases.mondoo.com/cnspec/11.11.0/cnspec_11.11.0_darwin_amd64.tar.gz"
  else
    sha256 "6c9e198dafb68aec1a4838c7170b99029cf7d7c8f9ec9654c8a14506817ea0a9"
    url "https://releases.mondoo.com/cnspec/11.11.0/cnspec_11.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

