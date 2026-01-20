
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.19.0"
  

  if Hardware::CPU.intel?
    sha256 "283e2d50218ea98be59a1f6e1e8a8e613fa336db3fa0382813941ed5a8018c7b"
    url "https://releases.mondoo.com/cnquery/12.19.0/cnquery_12.19.0_darwin_amd64.tar.gz"
  else
    sha256 "9dfd9ab362aa6431683a25c6d8cb778724d41ce5bce79e1d388f66b3b8836726"
    url "https://releases.mondoo.com/cnquery/12.19.0/cnquery_12.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

