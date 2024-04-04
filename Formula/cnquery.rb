
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.11.0"
  

  if Hardware::CPU.intel?
    sha256 "325a4127ea5fa7bf9a3c5dd8ea64988b96b93435e0999b06352d780c2b0661d6"
    url "https://releases.mondoo.com/cnquery/10.11.0/cnquery_10.11.0_darwin_amd64.tar.gz"
  else
    sha256 "a89244e5b87d77db939e51981159738523cd335143bffaf9b93aad63220243fe"
    url "https://releases.mondoo.com/cnquery/10.11.0/cnquery_10.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

