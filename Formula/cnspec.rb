
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.27.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "23cdbe828e738a5236107687d32b9b6968663dc38bb2dabd21c907ac1f55e5a2"
    url "https://releases.mondoo.com/cnspec/11.27.0/cnspec_11.27.0_darwin_amd64.tar.gz"
  else
    sha256 "36eaa0ec233f818ed1035b464454d3c2e45e767ddd7bdeeba1efb6eeab2ad3b2"
    url "https://releases.mondoo.com/cnspec/11.27.0/cnspec_11.27.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

