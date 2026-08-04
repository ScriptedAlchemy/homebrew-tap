class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.69.tar.gz"
  sha256 "f70f36a26c4d0289266e60ee379e5762293f9ffcb4cbc87e6d0365521551f40a"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.69"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9d724a7aa30ba809473c8a966618bc7b7993b85f85b138bcd007db3af9a55d01"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "887f5f397a9d6cc9951895bad459ccd2a51fac6f0f26c531655542a1fc7b0934"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
