
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.2.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "860b4723cd6ec40c52f335d7d654083ead8a9ee96f868b3a75ca16fe9f877148"
    url "https://releases.mondoo.com/cnspec/9.2.2/cnspec_9.2.2_darwin_amd64.tar.gz"
  else
    sha256 "5f94a9d73ba2ffe824dc3d7cffa46ed8412dcd83e9d0918db8342534a4343eb2"
    url "https://releases.mondoo.com/cnspec/9.2.2/cnspec_9.2.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

