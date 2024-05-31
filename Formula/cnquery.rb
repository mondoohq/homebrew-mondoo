
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.6.3"
  

  if Hardware::CPU.intel?
    sha256 "0e3a66887cdb51f28e169df3cc177ee767ae1aad8126be62d6fa9ddfde8e883f"
    url "https://releases.mondoo.com/cnquery/11.6.3/cnquery_11.6.3_darwin_amd64.tar.gz"
  else
    sha256 "011187b40d198eeada58597c2ab22176854877a5bdc2fb9ced211de200da6767"
    url "https://releases.mondoo.com/cnquery/11.6.3/cnquery_11.6.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

