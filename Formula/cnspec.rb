
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.4.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f97a379456842a43fb0c461c088d30acfa28b095280a55b91be3b42e96d9acd3"
    url "https://releases.mondoo.com/cnspec/10.4.0/cnspec_10.4.0_darwin_amd64.tar.gz"
  else
    sha256 "76867434bc5816ab798c388cc99b939ce5b566afe0e2f7c02f97565368b9fbe6"
    url "https://releases.mondoo.com/cnspec/10.4.0/cnspec_10.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

