class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.29.tar.gz"
  sha256 "5074a7c27f89fd766200e3d9eb69fe6270cbfb75b6cb5016fedfacd7dac02d50"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.29"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "03c69f5439a9c8182a6b875425b75e4b67ea2696908e0a6d13a9ae4b93ea5d37"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d83b366e8fde6a105add718aa964a382776aaeab627b55a9b0e80c1ebc6789e2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
