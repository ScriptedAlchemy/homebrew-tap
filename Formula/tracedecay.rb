class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.34.tar.gz"
  sha256 "3739b1de215a7a81ccfd8b2eaa11cf3cc99e84ecf41c1b558796d9c842a0b58a"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.34"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "db821a582367361e94e8e26181e265579a195bb51a2f760cc6da062d4faeaf8a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "92eb8936718ff371ca84d76d38d15b217f1d64318d2cb7d1e506fa663a1eb0d6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
