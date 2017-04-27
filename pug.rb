class Pug < Formula
  desc "Update projects and their dependencies with a single command"
  homepage "https://github.com/ashur/pug"
  url "https://github.com/ashur/pug.git",
    :tag => "v0.7.2",
    :revision => "c61ec677d3e2dde82bc94ed5ea3a5baa320085e5"
  head "https://github.com/ashur/pug.git"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/pug"
  end

  test do
    system "#{bin}/pug", "--version"
  end
end
