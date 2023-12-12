
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.11.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7082341b65e1b2a4ca492c7e0acd72a286567deb0981517ee5c72ac1614dda65"
    url "https://releases.mondoo.com/cnspec/9.11.0/cnspec_9.11.0_darwin_amd64.tar.gz"
  else
    sha256 "594e0173ad659114d1012b7a495aa57cebec9ce0aaa5103c2e6e9a8195320834"
    url "https://releases.mondoo.com/cnspec/9.11.0/cnspec_9.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

