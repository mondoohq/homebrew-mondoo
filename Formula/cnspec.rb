
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.5"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "8b189aeaba12ac0bdf224acfc583c6778470909256790849922beec36c4265b6"
    url "https://releases.mondoo.com/cnspec/9.3.5/cnspec_9.3.5_darwin_amd64.tar.gz"
  else
    sha256 "5ec5b1d8b52dde756b903346a7ec70920691d8a2228afc4fb7e2bc5cd412702d"
    url "https://releases.mondoo.com/cnspec/9.3.5/cnspec_9.3.5_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

