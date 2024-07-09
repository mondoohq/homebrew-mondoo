
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.12.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "f3759b2139d8632d068c71d913ce1a61b96d19e5d4ce3d2bcf143b1ac4a890e6"
    url "https://releases.mondoo.com/cnspec/11.12.2/cnspec_11.12.2_darwin_amd64.tar.gz"
  else
    sha256 "d2cfc7adf913a807649b2f6cc378330678e2e89d06b98e37617a36eaeaa9e69e"
    url "https://releases.mondoo.com/cnspec/11.12.2/cnspec_11.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

