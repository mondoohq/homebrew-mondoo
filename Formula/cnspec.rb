
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "10.9.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7c8dbf44e93dc60fb57d2068703d8c24b71da2f1be83afb629851edfeed056c9"
    url "https://releases.mondoo.com/cnspec/10.9.1/cnspec_10.9.1_darwin_amd64.tar.gz"
  else
    sha256 "30ac2025145f71bfa61bb76bff1a969cc9db6e3f13654d8ae8fa5f71a46d5dcd"
    url "https://releases.mondoo.com/cnspec/10.9.1/cnspec_10.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

