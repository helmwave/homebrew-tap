# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.24.0/helmwave_0.24.0_darwin_amd64.tar.gz"
      sha256 "64bcd89cd2beb24f835b712288df796f2009eb2b1cdbbe202d84642b77387326"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.24.0/helmwave_0.24.0_darwin_arm64.tar.gz"
      sha256 "57bdb73768468173d9ac9ac9316919d3484fd06dd3b902bbc4cee6a5af473f8d"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.24.0/helmwave_0.24.0_linux_amd64.tar.gz"
      sha256 "97c500fde29aa2656d1236082c3e9a157ca5f97962c0ec43e1904d3eb0e3f130"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.24.0/helmwave_0.24.0_linux_arm64.tar.gz"
      sha256 "84594faf79c74afdd833a46fe135f59685c96892b763bf2d61ebe4dc82094372"

      def install
        bin.install "helmwave"
      end
    end
  end

  head "https://github.com/helmwave/helmwave.git", branch: "main"

  test do
    assert_match version.to_s, shell_output("#{bin}/helmwave --version")
  end
end
