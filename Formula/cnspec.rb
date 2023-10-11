
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ee8a20caed32382ff2ab8236f5aca4f82d65e7baa3803b55a5626010134f9a83"
    url "https://releases.mondoo.com/cnspec/9.0.3/cnspec_9.0.3_darwin_amd64.tar.gz"
  else
    sha256 "440c70f515c21008495dcce23597b4262b9c544dc4a86aa939022461e935ef2f"
    url "https://releases.mondoo.com/cnspec/9.0.3/cnspec_9.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

