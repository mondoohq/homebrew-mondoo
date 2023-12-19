
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.12.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "eeddd875d78069079b41c36ff0d47567a36a76bba57f99765636b816764c5d50"
    url "https://releases.mondoo.com/cnspec/9.12.0/cnspec_9.12.0_darwin_amd64.tar.gz"
  else
    sha256 "9b9cf72592ab5f7405648aa6f3997ea84041177a481b616b4fd31ffc267e59cc"
    url "https://releases.mondoo.com/cnspec/9.12.0/cnspec_9.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

