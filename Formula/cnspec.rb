
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.46.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "7f43b090397455e72d4b8f79e36afef20a33aaeba47625f1ba3a7c2aefa1cc14"
    url "https://releases.mondoo.com/cnspec/11.46.2/cnspec_11.46.2_darwin_amd64.tar.gz"
  else
    sha256 "ce70eb88f0cfa1dbf5653bc19f8c19d657662d06b19d1cb92aebc34c7be29136"
    url "https://releases.mondoo.com/cnspec/11.46.2/cnspec_11.46.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

