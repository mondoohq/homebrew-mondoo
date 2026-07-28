
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.31.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "76a526b7af3b9c05bf0eec492396d76a4c73f752c3a5c08bda7bdb345e43b242"
    url "https://releases.mondoo.com/cnspec/13.31.0/cnspec_13.31.0_darwin_amd64.tar.gz"
  else
    sha256 "bd87406ed7918a215d3fb321aeae17f832ddb8bddd722fddefb0d0d8a90897a6"
    url "https://releases.mondoo.com/cnspec/13.31.0/cnspec_13.31.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

