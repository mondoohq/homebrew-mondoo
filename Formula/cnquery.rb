
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.3.4"
  

  if Hardware::CPU.intel?
    sha256 "07583be0ea9cc92075ecd370ca22c7c2f58566c3c3b49e5148d94abf4ac2f0a9"
    url "https://releases.mondoo.com/cnquery/10.3.4/cnquery_10.3.4_darwin_amd64.tar.gz"
  else
    sha256 "97af4f427261f505beec9d4e1d247cfb61313781bedc6da28e0ea481e33f4414"
    url "https://releases.mondoo.com/cnquery/10.3.4/cnquery_10.3.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

