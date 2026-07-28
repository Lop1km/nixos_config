{ pkgs, config, ... }:
{
  age.secrets.searxng = {
    file = ../../secrets/searxng.age;
    owner = "searx";
    group = "searx";
  };
  services.searx = {
    enable = true;
    package = pkgs.searxng;
    redisCreateLocally = true;
    environmentFile = config.age.secrets.searxng.path;
    settings = {
      server = {
        port = 8888;
        bind_address = "127.0.0.1";
        cors = false;
      };
      search = {
        safe_search = 2;
        autocomplete = "duckduckgo";
        image_proxy = true;
        method = "GET";
        formats = [
          "html"
          "json"
        ];
      };
      enabled_plugins = [
        "Basic Calculator"
        "Hash plugin"
        "Open Access DOI rewrite"
        "Hostnames plugin"
        "Unit converter plugin"
        "Tracker URL remover"
      ];
    };
  };
}
