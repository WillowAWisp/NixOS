{ ... }: {
  # Import password, not much else to do with root.
  users.users.root = {
    passwordFile = "/nix/persist/passwords/root";
  };
}
