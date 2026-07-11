class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.54.tar.gz"
  sha256 "454f9894380af980e7f8263c038b84b5cd99814ad12e4155a260955800feb2f5"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.54"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "2b6ca28f0308a801b92d61ce381552e403edba33f69ff9e205138e5c34d36685"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d8e8d284855d5044c17f609b91f7379e6cacadab3128a3e4970d07c12796ac1e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
