class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v0.1.2/ditdah-macos-amd64.tar.gz"
      sha256 "fbf7459bab2b36bfc75a420f1d9b46f607beba39ec0b439c1716a98fc5cd8a96"
    else
      url "https://github.com/encse/ditdah/releases/download/v0.1.2/ditdah-macos-arm64.tar.gz"
      sha256 "efd7ad0837c3b359d64411b4d2c62d97bfa413d5057a2118d2427d2654da9f24"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
