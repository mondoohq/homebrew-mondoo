
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "14.10.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "5fdf39d8d382f3ebe77f906b73a895721ae5d10b35e1fe9f2b26b4f4bea21160"
    url "https://releases.mondoo.com/cnspec/14.10.0/cnspec_14.10.0_darwin_amd64.tar.gz"
  else
    sha256 "dcd60c95b79eaf9951710d450b34b5afe5ccfa462d54afa25dfa2fd20705e778"
    url "https://releases.mondoo.com/cnspec/14.10.0/cnspec_14.10.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

