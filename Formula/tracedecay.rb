class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.59.tar.gz"
  sha256 "9c3bdce7fe6429385ca9a7fcd0fac1b1f9a70a36e09eca5aade15f7796f1ff67"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.59"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d1bdd8795e802bb0ca7f0dfd4e733ca352a1212b86b6e36f3c4b10ae48e59d0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c6289400b3c7a8c3911433ccafc3e9a5614a580295dd386754c91d3bf242dfb9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
