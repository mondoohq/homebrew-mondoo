
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.1.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3b908ca1bc3e4bec5b71b2f82b32cd3c1171b2e1c7ce6867457b27d0b54a1f96"
    url "https://releases.mondoo.com/cnspec/9.1.0/cnspec_9.1.0_darwin_amd64.tar.gz"
  else
    sha256 "efbd64fe9984764df76fcf7ca281c4c313ce071ec49d4ce7286ce8716c837b55"
    url "https://releases.mondoo.com/cnspec/9.1.0/cnspec_9.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

