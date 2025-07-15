
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.63.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "834836828594cb40c0feeb9e34ffd828bb08857c21af634692219eb30139f037"
    url "https://releases.mondoo.com/cnspec/11.63.0/cnspec_11.63.0_darwin_amd64.tar.gz"
  else
    sha256 "5b8079f9f1908dc4195a6ea5976a4c3a9cbfebacd65711b75efd0cbd16e56b05"
    url "https://releases.mondoo.com/cnspec/11.63.0/cnspec_11.63.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

