
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.13.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e2ae049b08e3f3184447d47170c9d2fa041d37efe251059bcc4ae023a7049e3b"
    url "https://releases.mondoo.com/cnspec/9.13.0/cnspec_9.13.0_darwin_amd64.tar.gz"
  else
    sha256 "80f62c153b7dceab5c255239aaab0a4e76386550aeb841b9a534f290ecf42515"
    url "https://releases.mondoo.com/cnspec/9.13.0/cnspec_9.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

