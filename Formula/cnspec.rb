
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.5.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "66a92b51a5e99366e8e6a9f1f545a33094aafd06060675630829276d4d49d829"
    url "https://releases.mondoo.com/cnspec/9.5.0/cnspec_9.5.0_darwin_amd64.tar.gz"
  else
    sha256 "fdba846bcc369abcb002b73f89b3b9ba95ad0c9bb5d8b9fb593d138100affe32"
    url "https://releases.mondoo.com/cnspec/9.5.0/cnspec_9.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

