
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "954f6660c859323ef688b2196bb75c37b917ea519347c15c23d8448bb5204f1e"
    url "https://releases.mondoo.com/cnspec/9.3.4/cnspec_9.3.4_darwin_amd64.tar.gz"
  else
    sha256 "01ae39c9d0cb5d9998f78d85102464ddfe724ad388997520f60a185924f8438d"
    url "https://releases.mondoo.com/cnspec/9.3.4/cnspec_9.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

