
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.6.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "98c242a6a4e229f97159ac4f523698ba53cefd84df3a5845117444a5e8ae8e66"
    url "https://releases.mondoo.com/cnspec/11.6.3/cnspec_11.6.3_darwin_amd64.tar.gz"
  else
    sha256 "d705410881d7d39133dbca388917a3197cfeeffa2aab89ff36a0c9ea1e3bd4e2"
    url "https://releases.mondoo.com/cnspec/11.6.3/cnspec_11.6.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

