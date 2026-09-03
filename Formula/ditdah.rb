class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v1.1.2/ditdah-macos-amd64.tar.gz"
      sha256 "3227a9f195423dcdc3e9c9f7358699fd179807394b95ca56aab263865adb6290"
    else
      url "https://github.com/encse/ditdah/releases/download/v1.1.2/ditdah-macos-arm64.tar.gz"
      sha256 "18a5d92c4371c92e3f4a4d350dd58c05b7794bad9289a4522aa17fc2a65d7dab"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
