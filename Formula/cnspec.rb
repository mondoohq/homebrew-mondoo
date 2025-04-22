
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.51.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "db76e391e43293126766074cbf8ed0420844e5019703a82d5feff66e4f581ab9"
    url "https://releases.mondoo.com/cnspec/11.51.1/cnspec_11.51.1_darwin_amd64.tar.gz"
  else
    sha256 "872c472ea32aa650048db6e9d8f66a65f6d6f9855e58e5ba4d634141bb76afe4"
    url "https://releases.mondoo.com/cnspec/11.51.1/cnspec_11.51.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

