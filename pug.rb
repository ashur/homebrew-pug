class Pug < Formula
  desc "Update projects and their dependencies with a single command"
  homepage "https://github.com/ashur/pug"
  url "https://github.com/ashur/pug.git",
    :tag => "v0.7.3",
    :revision => "e6edfa2331784cac5b62256c3c2ef09d8268def2"
  head "https://github.com/ashur/pug.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/pug"
  end

  test do
    system "#{bin}/pug", "--version"
  end
end
