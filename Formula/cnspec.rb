
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.19.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f317f35745ea75f78c3ea9b51b5714bc38c1fca3097df0297a18d27d7ec71069"
    url "https://releases.mondoo.com/cnspec/12.19.1/cnspec_12.19.1_darwin_amd64.tar.gz"
  else
    sha256 "36b6575342619c4e3be309022f74a04c3911db48a9c6bce35de048f799b5a802"
    url "https://releases.mondoo.com/cnspec/12.19.1/cnspec_12.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

