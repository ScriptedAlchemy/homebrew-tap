class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.62.tar.gz"
  sha256 "09140d7cf49fa011c8490869059e633f2c401aef617961557aa6f5ec71fff385"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.62"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a961b5933f9f361a42bebe62925428f4eb6314e58d119c587cfb0237121a4b01"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3312ade4541ff9c045375e4792c3846d25c40df18a1baf1a39c287915e9b0f44"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
