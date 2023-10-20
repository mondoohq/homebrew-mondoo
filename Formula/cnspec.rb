
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.2.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0c434f628ce1f2cd00413d62fbe7567d965bba6de61bd0fe3baa2d5ff144afd2"
    url "https://releases.mondoo.com/cnspec/9.2.3/cnspec_9.2.3_darwin_amd64.tar.gz"
  else
    sha256 "35d3c31a38e544ca3b9a0be86235360cef06f933516a88e5b46b4ffacf57e390"
    url "https://releases.mondoo.com/cnspec/9.2.3/cnspec_9.2.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

