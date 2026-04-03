
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package for cnquery to cnspec migration"
  homepage "https://mondoo.com"
  version "13.3.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "47bd03eed8cdb4d1f7b05a8f2db8788fa4c973d155032cfbec6af334107abfdb"
    url "https://releases.mondoo.com/cnspec/13.3.3/cnspec_13.3.3_darwin_amd64.tar.gz"
  else
    sha256 "637c5b6bfdd11cebd86865dd3477fa493a43154814ef74535e0e78e6381a866a"
    url "https://releases.mondoo.com/cnspec/13.3.3/cnspec_13.3.3_darwin_arm64.tar.gz"
  end

  def install
    # Transitional package: cnspec provides the cnquery symlink
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end

