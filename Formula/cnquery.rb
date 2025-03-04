
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.43.0"
  

  if Hardware::CPU.intel?
    sha256 "24167905a5621572ad80ab8fba6a7ee4ad4ade43dd4e3d30840630a371d66920"
    url "https://releases.mondoo.com/cnquery/11.43.0/cnquery_11.43.0_darwin_amd64.tar.gz"
  else
    sha256 "7c5a4ea5b24ca83e3bb0b947c8c5a8dcf760ba154769d89be581bc6d23ba6822"
    url "https://releases.mondoo.com/cnquery/11.43.0/cnquery_11.43.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

