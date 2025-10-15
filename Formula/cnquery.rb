
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.5.1"
  

  if Hardware::CPU.intel?
    sha256 "25e5c693f708b8d2f46f7d8fec0ce23dca0bbdd026b7864673bd5229e469110c"
    url "https://releases.mondoo.com/cnquery/12.5.1/cnquery_12.5.1_darwin_amd64.tar.gz"
  else
    sha256 "cb15b03fded200ff917bab6261d2428cfb104225bf9449e3b168210f3589b4ae"
    url "https://releases.mondoo.com/cnquery/12.5.1/cnquery_12.5.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

