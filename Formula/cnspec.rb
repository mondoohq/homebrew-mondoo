
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.9.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "28a6ebdd713a63a1276bc91141d272d8606a69966cbcafa4df53140fd6edb1d2"
    url "https://releases.mondoo.com/cnspec/11.9.0/cnspec_11.9.0_darwin_amd64.tar.gz"
  else
    sha256 "823f68fb65adcada4284b74880668e72d2f426d36bbd3f86563e9b4c1b493681"
    url "https://releases.mondoo.com/cnspec/11.9.0/cnspec_11.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

