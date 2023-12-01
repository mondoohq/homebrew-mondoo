
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.9.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "412c424b6f1e2be598dbfe91fffed74432d3beee755f449afcfd986fee39fb9d"
    url "https://releases.mondoo.com/cnspec/9.9.4/cnspec_9.9.4_darwin_amd64.tar.gz"
  else
    sha256 "4ac6b24ea72d93dfd6fcb6d16b86352ab712f6f831860f362735d7bfd1b2f4fc"
    url "https://releases.mondoo.com/cnspec/9.9.4/cnspec_9.9.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

