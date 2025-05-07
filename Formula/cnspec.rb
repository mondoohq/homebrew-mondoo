
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.53.2"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "909ec65106d26f6c1938209bc0098367f93df54d7d6bdfde96034fe1a699feb7"
    url "https://releases.mondoo.com/cnspec/11.53.2/cnspec_11.53.2_darwin_amd64.tar.gz"
  else
    sha256 "41fe4079ebf8b327cd1f7b1345e60a908e18b1994138cfa72469cfb6ef57a3df"
    url "https://releases.mondoo.com/cnspec/11.53.2/cnspec_11.53.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

