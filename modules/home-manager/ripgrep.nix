{
  programs.ripgrep = {
    enable = true;
    arguments = [
      "--binary"
      "--engine=auto"
      "--follow"
      "--heading"
      "--hidden"
      "--no-ignore"
    ];
  };
}
