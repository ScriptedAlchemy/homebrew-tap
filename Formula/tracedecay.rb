class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "7c670e162019b288b9b3014cb76fba06838babacec8f5abfd7a593252179c91c"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "cf03f72b145506d0a34bdb2ba15cb48681bcd1478cd813e39560a8266c0848b6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3101ae28e90d0d84c1e6e36b47ceb8e9dff6462a67d449d6a163b8491a48f7cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
