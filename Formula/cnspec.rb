
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "71ae7b879d55eddc6da4f10fcd0a4edc887c9358064cad99e6c5976e26865c84"
    url "https://releases.mondoo.com/cnspec/9.0.1/cnspec_9.0.1_darwin_amd64.tar.gz"
  else
    sha256 "91bdec0ce6dc3d6d7c87d302457e8b5429092e262cc2e4ea03344a62ff87098c"
    url "https://releases.mondoo.com/cnspec/9.0.1/cnspec_9.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

