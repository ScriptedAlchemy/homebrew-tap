class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.18.tar.gz"
  sha256 "d02d7954be40e9fc2397b92793d4cad3f6390d6714534e7ad4d6e55dd443b613"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.18"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "dc508224b6cb646f392523f6d4373ed63e221dedb75d23e75c7bb64f14e66138"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7d3da6e9f61eb345d0fb730baa6f9c3d7a94d55e75eae90c3ebe177ce277de38"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
