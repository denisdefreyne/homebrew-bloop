class Bloop < Formula
  desc "Does nothing useful"
  homepage "https://rubygems.org/gems/bloop"
  url "https://rubygems.org/downloads/bloop-0.1.2.gem"
  sha256 "ddedfcefaed8515622dde34c50bb505f405f79011bac9aaac811ea84a4d3cf51"
  license "MIT"

  uses_from_macos "ruby"

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
