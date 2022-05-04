let
  _devicon = name: suffix: "https://raw.githubusercontent.com/devicons/devicon/master/icons/${name}/${name}-${suffix}.svg";
  devicon = name: _devicon name "original";
in [
  {
    name = "Angular";
    url = "https://angular.io/";
    img = devicon "angularjs";
    categories = ["Frontend" "Framework"];
    familiarity = 4;
  }
  {
    name = "Nix";
    url = "https://nixos.org/nix/";
    img = devicon "nixos";
    categories = ["DevOps" "Language"];
    familiarity = 7;
  }
  {
    name = "bash";
    url = "https://www.gnu.org/software/bash/";
    img = devicon "bash";
    categories = ["Language"];
    familiarity = 7;
  }
  {
    name = "C";
    url = "https://www.gnu.org/software/c/";
    img = devicon "c";
    categories = ["Language"];
    familiarity = 6;
  }
  {
    name = "C++";
    url = "https://www.gnu.org/software/gcc/";
    img = devicon "cplusplus";
    categories = ["Language"];
    familiarity = 6;
  }
  {
    name = "Docker";
    url = "https://docker.com/";
    img = devicon "docker";
    categories = ["DevOps"];
    familiarity = 5;
  }
  {
    name = "Podman";
    url = "https://podman.io/";
    img = devicon "podman";
    categories = ["DevOps"];
    familiarity = 5;
  }
  {
    name = "Python";
    url = "https://www.python.org/";
    img = devicon "python";
    categories = ["Language"];
    familiarity = 7;
  }
  {
    name = "Rust";
    url = "https://www.rust-lang.org/";
    img = _devicon "rust" "plain";
    categories = ["Language"];
    familiarity = 8;
  }
  {
    name = "Go";
    url = "https://golang.org/";
    img = devicon "go";
    categories = ["Language"];
    familiarity = 8;
  }
  {
    name = "Java";
    url = "https://www.oracle.com/technetwork/java/index.html";
    img = devicon "java";
    categories = ["Language"];
    familiarity = 6;
  }
  {
    name = "R";
    url = "https://www.r-project.org/";
    img = devicon "r";
    categories = ["Language" "Data Science"];
    familiarity = 6;
  }
  {
    name = "Julia";
    url = "https://julialang.org/";
    img = devicon "julia";
    categories = ["Language" "Data Science"];
    familiarity = 6;
  }
  {
    name = "Haskell";
    url = "https://www.haskell.org/";
    img = devicon "haskell";
    categories = ["Language"];
    familiarity = 5;
  }
  {
    name = "Vim";
    url = "https://www.vim.org/";
    img = devicon "vim";
    categories = ["Editor"];
    familiarity = 8;
  }
  {
    name = "Neovim";
    url = "https://neovim.io/";
    img = "https://github.com/neovim/neovim.github.io/blob/master/logos/neovim-mark-flat.svg";
    categories = ["Editor"];
    familiarity = 8;
  }
  {
    name = "LaTeX";
    url = "https://www.latex-project.org/";
    img = devicon "latex";
    categories = ["Language"];
    familiarity = 8;
  }
  {
    name = "GitHub Actions";
    url = "https://github.com/features/actions";
    img = devicon "github";
    categories = ["DevOps"];
    familiarity = 6;
  }
  {
    name = "git";
    url = "https://git-scm.com/";
    img = devicon "git";
    categories = ["DevOps"];
    familiarity = 7;
  }
  {
    name = "AWS";
    url = "https://aws.amazon.com/";
    img = devicon "amazonwebservices";
    categories = ["DevOps" "Cloud"];
    familiarity = 6;
  }
  {
    name = "Google Cloud";
    url = "https://cloud.google.com/";
    img = devicon "googlecloud";
    categories = ["DevOps" "Cloud"];
    familiarity = 4;
  }
  {
    name = "MongoDB";
    url = "https://www.mongodb.com/";
    img = devicon "mongodb";
    categories = ["Database"];
    familiarity = 6;
  }
  {
    name = "PostgreSQL";
    url = "https://www.postgresql.org/";
    img = devicon "postgresql";
    categories = ["Database"];
    familiarity = 6;
  }
  {
    name = "ELM";
    url = "https://elm-lang.org/";
    img = devicon "elm";
    categories = ["Language"];
    familiarity = 6;
  }
  {
    name = "Linux";
    url = "https://www.linux.org/";
    img = devicon "linux";
    categories = ["DevOps" "OS"];
    familiarity = 8;
  }
  {
    name = "matlab";
    url = "https://www.mathworks.com/products/matlab.html";
    img = devicon "matlab";
    categories = ["Data Science"];
    familiarity = 6;
  }
  {
    name = "neo4j";
    url = "https://neo4j.com/";
    img = devicon "neo4j";
    categories = ["Database"];
    familiarity = 6;
  }
  {
    name = "numPy";
    url = "https://numpy.org/";
    img = devicon "numpy";
    categories = ["Data Science"];
    familiarity = 6;
  }
  {
    name = "pandas";
    url = "https://pandas.pydata.org/";
    img = devicon "pandas";
    categories = ["Data Science"];
    familiarity = 6;
  }
]
