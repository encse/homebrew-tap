class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v1.0.0/ditdah-macos-amd64.tar.gz"
      sha256 "b64d8a2ac7cdbfc32704ff291ea8ef5e93f8d8babfd22d498cb25aa059e8ce12"
    else
      url "https://github.com/encse/ditdah/releases/download/v1.0.0/ditdah-macos-arm64.tar.gz"
      sha256 "161a11c899715cbd09018f84dfd7017e251ceb9a208d9af60b2e82dbb981edb7"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
