
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.12.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "744b9c43690376031927474c980b38c15409f927228db9c184a99e3e057f9d06"
    url "https://releases.mondoo.com/cnspec/9.12.1/cnspec_9.12.1_darwin_amd64.tar.gz"
  else
    sha256 "c203147b3c12a537e6dcdeb6e8bc645881117c500c67c8e306c2a3c0333b1819"
    url "https://releases.mondoo.com/cnspec/9.12.1/cnspec_9.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

