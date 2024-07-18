
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.13.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/cnspec/11.13.2/cnspec_11.13.2_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/cnspec/11.13.2/cnspec_11.13.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

