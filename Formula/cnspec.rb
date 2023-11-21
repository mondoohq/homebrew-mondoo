
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.8.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "58cfe734904757a424d15cb6035446c292e48b6056bdf5317761041d6906b139"
    url "https://releases.mondoo.com/cnspec/9.8.0/cnspec_9.8.0_darwin_amd64.tar.gz"
  else
    sha256 "a3e19ad3ca1c98502429e2f1801f195b21c00b34c30c86145bbe0f1cfeea0d08"
    url "https://releases.mondoo.com/cnspec/9.8.0/cnspec_9.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

