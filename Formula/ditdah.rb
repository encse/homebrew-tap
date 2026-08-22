class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v0.1.3/ditdah-macos-amd64.tar.gz"
      sha256 "23b8c4a2d42f114ccee78e946224f0548807266ed68b06898b6ee771da920a82"
    else
      url "https://github.com/encse/ditdah/releases/download/v0.1.3/ditdah-macos-arm64.tar.gz"
      sha256 "9e7d83ecd7b7a68323b8cef8d403c807e7b6ae7393e72a44523cea99944c195a"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
