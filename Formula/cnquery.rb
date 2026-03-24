
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Transitional package: cnquery has been renamed, install cnspec instead"
  homepage "https://mondoo.com"
  version "13.2.0"
  depends_on "cnspec"

  url "https://github.com/mondoohq/mql/archive/refs/tags/v13.2.0.tar.gz"
  sha256 "b1588abac59122add26efb9b3e91a4c7e68535f24e1579fbd95a4b38488dd438"

  def install
    # cnspec already provides the cnquery symlink via bin.install_symlink
    # Install a placeholder so Homebrew doesn't error with "Empty installation"
    (share/"cnquery").mkpath
    (share/"cnquery/README").write <<~EOS
      cnquery has been renamed to mql. This formula installs cnspec
      (which depends on mql) for backward compatibility.
    EOS
  end

  test do
    system Formula["cnspec"].opt_bin/"cnspec", "--version"
  end
end
