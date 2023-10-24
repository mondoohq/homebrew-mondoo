
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.3.1"
  

  if Hardware::CPU.intel?
    sha256 "4912ba5dfd4a8596e1b9995323b43a6aeffc12f97ee02bf2d443355b79fbd861"
    url "https://releases.mondoo.com/cnquery/9.3.1/cnquery_9.3.1_darwin_amd64.tar.gz"
  else
    sha256 "6a97d4c8846bf38bc82c432748dcd8247bfb6842c5bc9f4735a28b9a0eb9a6bf"
    url "https://releases.mondoo.com/cnquery/9.3.1/cnquery_9.3.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

