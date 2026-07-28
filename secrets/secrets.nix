let
  user1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ0mY9M+VgWErl4WwbnOI/39D7SNdEjOs1AxhewnTVse user@nixos-base";
  users = [ user1 ];

  system1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH8nsKf0peLqgdWeUaWBbQGNqR1/9ToaPPs7DEa5WMI0 root@nixos-base";
  systems = [ system1 ];
in
{
  "searxng.age".publicKeys = [
    user1
    system1
  ];
}
