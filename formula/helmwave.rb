# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.26.0/helmwave_0.26.0_darwin_amd64.tar.gz"
      sha256 "7c7fbce63b7153fe646e4b88a04d0da441860df35791926969c7a0a6ccfeee6e"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.26.0/helmwave_0.26.0_darwin_arm64.tar.gz"
      sha256 "d6abed021d2cb8207afb8c18ef6e0b05a1afcdc47e35f9fbe125466020caad08"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.26.0/helmwave_0.26.0_linux_amd64.tar.gz"
      sha256 "dbe9f04c05b84c94acd394ab1a102269d0c7136a1a0617d142a8b7d99cc82cea"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.26.0/helmwave_0.26.0_linux_arm64.tar.gz"
      sha256 "6e1e51d4e02c978926d49a42aa27caaf149c12e3b7fadccf35d6e394acc2867a"

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
