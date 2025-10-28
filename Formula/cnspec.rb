
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.7.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "b3643a506faef772c753b4749d7c077c447178a030bf78ce0f5afd4e0c8a95c6"
    url "https://releases.mondoo.com/cnspec/12.7.0/cnspec_12.7.0_darwin_amd64.tar.gz"
  else
    sha256 "d6cea2de8380bf6ba11d3f66c585f395480e5c018339a12a81e48c2f3842e729"
    url "https://releases.mondoo.com/cnspec/12.7.0/cnspec_12.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

