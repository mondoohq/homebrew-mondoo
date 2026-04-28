
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Mql < Formula
  desc "MQL - Asset Inventory Query Language"
  homepage "https://mondoo.com"
  version "13.7.0"
  

  if Hardware::CPU.intel?
    sha256 "d011dc077027e59e71ad737fd1af531b15d20ca74070164e0df6feae641b20e4"
    url "https://releases.mondoo.com/mql/13.7.0/mql_13.7.0_darwin_amd64.tar.gz"
  else
    sha256 "2fbfbc4efba3c359b93ab48a51b24598d840472059dc0b572361bdc36bbb9cfa"
    url "https://releases.mondoo.com/mql/13.7.0/mql_13.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mql"
  end

  test do
    system "#{bin}/mql --version"
  end
end

