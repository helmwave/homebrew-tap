# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helmwave < Formula
  desc "HelmWave is like docker-compose for helm"
  homepage ""
  version "0.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/helmwave/helmwave/releases/download/v0.28.1/helmwave_0.28.1_darwin_arm64.tar.gz"
      sha256 "a4f3f808a08481606e3cdef696e998f271cc24c7cf5d905cb76a7f647d6f5e82"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.28.1/helmwave_0.28.1_darwin_amd64.tar.gz"
      sha256 "b6e9a2d8ac35b48a6383bb8bd824b9cd979e2927e236f726aab8821b3f1916f0"

      def install
        bin.install "helmwave"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/helmwave/helmwave/releases/download/v0.28.1/helmwave_0.28.1_linux_amd64.tar.gz"
      sha256 "18e0c7143ef261d75abb374b6feb571652970e7de09eb67388f7cea0310ca52b"

      def install
        bin.install "helmwave"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmwave/helmwave/releases/download/v0.28.1/helmwave_0.28.1_linux_arm64.tar.gz"
      sha256 "265b860cca7a121dedc9c1c301c9627a74a87b2e42f886d7e246c65a95aa95db"

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
