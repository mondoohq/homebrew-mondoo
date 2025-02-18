
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.42.0"
  

  if Hardware::CPU.intel?
    sha256 "b025e5ee6959bce21dae6d15e9c9f41ec3305c3fdf3d4cec692104462b170a2b"
    url "https://releases.mondoo.com/cnquery/11.42.0/cnquery_11.42.0_darwin_amd64.tar.gz"
  else
    sha256 "992c7a5afe6e089d9033748e53d0733f41fe54fde4e903a3e05610eabf8d768b"
    url "https://releases.mondoo.com/cnquery/11.42.0/cnquery_11.42.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

