class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.23.tar.gz"
  sha256 "a46e3ef5deaa2340cdbed888486cac85dad7638b1777052e60ef022cf7c77931"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.23"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5bcffcffde00779542c1fe33be2b2c0685d56fe955c9e2630976d4bea1fd345f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "48019b0d151c205fb0014b393cdfde17bc856909fb2afbfe1a4992082efaa01d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
