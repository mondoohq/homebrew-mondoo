
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.8.0"
  

  if Hardware::CPU.intel?
    sha256 "ea358bfc10d58de2f2bdc42176ce913a797790bfbed661c757204ac78e276aa7"
    url "https://releases.mondoo.com/cnquery/11.8.0/cnquery_11.8.0_darwin_amd64.tar.gz"
  else
    sha256 "9a1603090484e47a0262b91e4ad8d6a7bd2c1cd3f05c9f67866eedba18b74a10"
    url "https://releases.mondoo.com/cnquery/11.8.0/cnquery_11.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

