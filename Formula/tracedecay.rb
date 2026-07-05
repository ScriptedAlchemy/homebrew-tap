class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.30.tar.gz"
  sha256 "1f5a71b8a6b680e576921fbb50e65d905977313b773fd9f06db25275215ac9d9"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.30"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "86c79d5e807043f40a529fded1502db6e875a88c0cc9f02481913a09e3de0c5e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8e2745f5e299e2e8295186da42764701e60b69df2746f24a5394df8a1d1fd8c7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
