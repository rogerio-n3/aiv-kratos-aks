local claims = std.extVar('claims');

{
  identity: {
    traits: {
      email: claims.preferred_username,
      name: {
        [if "name" in claims then "first" else null]: claims.name,
      }
    }
  }
}