class Bloop < Formula
  desc "Does nothing useful"
  homepage "https://rubygems.org/gems/bloop"
  url "https://rubygems.org/downloads/bloop-0.1.3.gem"
  sha256 "87493f014b9b601eb6c6fbebb68f31bd573c83bd4b834de5e25daa6ba6f7694b"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "#{name}-*.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    system "#{bin}/bloop"
  end
end
