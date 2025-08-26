
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.69.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "efe4370ae5753d1e62f2e9628ddeaaff086ae7568069a7066fec9db54554a391"
    url "https://releases.mondoo.com/cnspec/11.69.0/cnspec_11.69.0_darwin_amd64.tar.gz"
  else
    sha256 "eb78ebaf8bb7bee4a0edc3dc8ab4376db0d26ebac8ba3c7b7f0271319eaf1241"
    url "https://releases.mondoo.com/cnspec/11.69.0/cnspec_11.69.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

