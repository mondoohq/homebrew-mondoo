
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.3.4"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "2fabad7aa6f175ae5a210f6bc6d87696a1051ce9e14fb8c70c1c5364cb5fd8dd"
    url "https://releases.mondoo.com/cnspec/10.3.4/cnspec_10.3.4_darwin_amd64.tar.gz"
  else
    sha256 "6e252b7ce76f7a328483619f2df3946165bf243e576872c164eae70c627ba66f"
    url "https://releases.mondoo.com/cnspec/10.3.4/cnspec_10.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

