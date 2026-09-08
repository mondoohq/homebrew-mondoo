
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.38.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "1703fe794746b00ded9d42a744129fe3fdf6ddd073308c58ef42d6eb7c1107fe"
    url "https://releases.mondoo.com/cnspec/13.38.0/cnspec_13.38.0_darwin_amd64.tar.gz"
  else
    sha256 "98769e14b9209b532e63e14a494b72ed9584bb45dbe1b55354543a03578a6428"
    url "https://releases.mondoo.com/cnspec/13.38.0/cnspec_13.38.0_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

