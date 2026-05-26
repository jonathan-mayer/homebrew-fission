class Fission < Formula
  desc "Fission CLI for Kubernetes serverless functions"
  homepage "https://fission.io"
  version "1.23.0"
  
  on_linux do
    url "https://github.com/fission/fission/releases/download/v#{version}/fission-v#{version}-linux-amd64"
    sha256 "2e212e0980e899238f231b91dde18c5d40185a538cb93195671a41dc83a4e193" # to be filled by automation
  end

  def install
    bin.install "fission-v#{version}-linux-amd64" => "fission"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fission version")
  end
end
