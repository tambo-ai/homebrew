class Tambo < Formula
  desc "Tambo command-line tool"
  homepage "https://tambo.co"
  url "https://registry.npmjs.org/tambo/-/tambo-0.50.0.tgz"
  sha256 "a8993dd0912bc14d71c9c7ecd0fb453fde76e57cc31d35a67218f09738d9d6b8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--omit=dev"
    bin.install_symlink libexec/"bin/tambo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tambo --version")
    system "#{bin}/tambo", "--help"
  end
end
