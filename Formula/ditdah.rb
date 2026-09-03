class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "1.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v1.1.3/ditdah-macos-amd64.tar.gz"
      sha256 "3dc6091b2cb994b5e58e4c8e7d3d0ad999e3dd7d26bf63f70b5c933c1ab05941"
    else
      url "https://github.com/encse/ditdah/releases/download/v1.1.3/ditdah-macos-arm64.tar.gz"
      sha256 "20184780582dcaf234f175d55dae7b2d7639893f5096f5c2e86a1f5927234e27"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
