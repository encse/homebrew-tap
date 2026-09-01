class Ditdah < Formula
  desc "Morse code decoder and amateur radio utility"
  homepage "https://github.com/encse/ditdah"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/encse/ditdah/releases/download/v1.1.1/ditdah-macos-amd64.tar.gz"
      sha256 "7b28abebba33c32660a6fa708dff8f21d95930437379cfaba2b3176a33a5ec2e"
    else
      url "https://github.com/encse/ditdah/releases/download/v1.1.1/ditdah-macos-arm64.tar.gz"
      sha256 "1ddf4c575d88f447e965721c8f36bfa50845e47ce475b6ba4774eb055b9e8876"
    end
  end

  def install
    bin.install "ditdah"
  end

  test do
    system "#{bin}/ditdah", "--version"
  end
end
