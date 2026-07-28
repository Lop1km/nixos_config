let
  user1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAebQ7ztLo+jsSnhVucznmm3BC9AvUi7NBdATn6130lM bob777lp2013@gmail.com
";
  user2 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBdh2fxDjsfi1bmY4FrfcIPUx7aQoj9RhqWBDfR8ufJm bob777lp2013@gmail.com
";
  users = [
    user1
    user2
  ];

  system1 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH8nsKf0peLqgdWeUaWBbQGNqR1/9ToaPPs7DEa5WMI0 root@nixos-base";
  system2 = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEvA4A/HCbkRIDjXXi4Gixbke+GrVXCrHv2Q0VAybU9s root@laptop
";
  systems = [
    system1
    system2
  ];

in
{
  "searxng.age".publicKeys = [
    user1
    system1
    user2
    system2
  ];
}
