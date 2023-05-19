class LgtmLint < Formula
  include Language::Python::Virtualenv

  desc "Fully featured 'Looks good to me!' linter"
  homepage "https://github.com/maxwellpaulm/lgtm-lint"
  url "https://files.pythonhosted.org/packages/ed/75/8fabbc813382ed319f86ef176154df2bcaf66c9e5c1c9353cacddc480753/lgtm-lint-1.0.2.tar.gz"
  sha256 "90ce1c8b719e276d05218d2737f77248fe336708297b7c91ebdc87630d5104f5"
  license "Unlicense"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    # test linter output on sample file
    assert_includes \
      shell_output("echo 0 > test.txt && #{bin}/lgtm-lint *"), \
      "Looks good to me"
  end
end
