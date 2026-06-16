
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.23.0"
  

  if Hardware::CPU.intel?
    sha256 "6e471cbf71dd501dbeebe269313cae0710b54b55aacbaa43631f3d10ccea72be"
    url "https://releases.mondoo.com/mql/13.23.0/mql_13.23.0_darwin_amd64.tar.gz"
  else
    sha256 "a6e14689067d23d85120643f2bd756cce956400c46c673e4f9745a6e7c52e1e6"
    url "https://releases.mondoo.com/mql/13.23.0/mql_13.23.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

