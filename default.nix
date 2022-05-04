{
  lib,
  writeTextFile,
}: let
  # tools = lib.sort (a: b: lib.toLower a.name < lib.toLower b.name) [
  tools = lib.sort (a: b: a.familiarity > b.familiarity) (import ./tools.nix);

  makeBadge = {
    url,
    name,
    img,
    size ? 25,
  }: ''
    <a href="${url}" title="${name}" style="display:flex;">
      <img src="${img}" alt="${name}" width=${toString size} height=${toString size}>
    </a>
  '';

  makeBadgeRow = tools:
    ''<p align="left">''
    + lib.concatMapStrings (tool: makeBadge {inherit (tool) url name img;}) tools
    + "</p>\n";

  tools_section = "### :rocket: Things I code with\n\n" + makeBadgeRow tools;

  username = "LeixB";
  stats_image = "https://github-readme-stats.vercel.app/api?username=${username}&show_icons=true&count_private=true";
  stats = ''
    [<img align="right" width="50%" src="${stats_image}&theme=dark">](https://metrics.lecoq.io/${username}#gh-dark-mode-only)
    [<img align="right" width="50%" src="${stats_image}">](https://metrics.lecoq.io/${username}#gh-light-mode-only)
  '';

  badges = ''
    [![built with nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://builtwithnix.org "built with nix")
    ![visitors](https://visitor-badge.glitch.me/badge?page_id=${username}.${username})
  '';

  about = ''
    I'm Leix, a Linux enthusiast and NixOS contributor.

    - :snowflake: I'm a fan of [Nix](https://nixos.org) and [NixOS](https://nixos.org/nixos/).
    - 🔭 I’m currently exploring ways to make data science projects more reproducible.
    - 🌱 I’m currently learning Rust, Go and Nix.
    - :mortar_board: I'm enrolled in the master in data science at [UPC](https://www.upc.edu).
    - 😄 Pronouns: he/him
  '';

  title = ''<h1 align="center">Hi there, nice to see you! :wave:</h1>'';

  text = builtins.concatStringsSep "\n\n" [title badges stats about tools_section];
in
  writeTextFile {
    name = "github-profile";
    destination = "/README.md";
    inherit text;
  }
