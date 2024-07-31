
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.15.1"
  

  if Hardware::CPU.intel?
    sha256 "2702138b51cab38b8a8d8d10921369d2cdcf37e45a68a7f9429191572b9b0185"
    url "https://releases.mondoo.com/cnquery/11.15.1/cnquery_11.15.1_darwin_amd64.tar.gz"
  else
    sha256 "5097917f173c13052cf80193b6f075d4468c93a44d4f47a08ae4b891478bff04"
    url "https://releases.mondoo.com/cnquery/11.15.1/cnquery_11.15.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

