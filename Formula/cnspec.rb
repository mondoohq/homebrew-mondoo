
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.12.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "4e8a9b1b9d1b8c21ca4828826fc6d3787f1bd2e30105781d0e681c4004b4de90"
    url "https://releases.mondoo.com/cnspec/12.12.0/cnspec_12.12.0_darwin_amd64.tar.gz"
  else
    sha256 "8f317dd2aa5f25443803248c4a05809f6e7e16b652d372469074d87be4fee153"
    url "https://releases.mondoo.com/cnspec/12.12.0/cnspec_12.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

