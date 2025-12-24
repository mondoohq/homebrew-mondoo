
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.15.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0a0e880e567e4406ec1a1cdd0d2c6a430cea8dd4fb13b9c46e3609ff74d10d2a"
    url "https://releases.mondoo.com/cnspec/12.15.0/cnspec_12.15.0_darwin_amd64.tar.gz"
  else
    sha256 "82503c276b9be563de8909990d1de072ba4254a226fcc234402b9a49abac9331"
    url "https://releases.mondoo.com/cnspec/12.15.0/cnspec_12.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

