Dune supports installing a subset of the sections in the .install file. This is
particularly useful if one wants to install binaries:
  $ dune build @install
  $ dune install --dry-run --prefix ./ --sections bin,man
  Installing bin/foo
  Installing man/mp
  Creating directory bin
  Copying _build/install/default/bin/foo to bin/foo (executable: true)
  Creating directory man
  Copying _build/install/default/man/mp to man/mp (executable: false)

Now let's install with the above command with one less section:

  $ dune install --dry-run --prefix ./ --sections bin
  Installing bin/foo
  Creating directory bin
  Copying _build/install/default/bin/foo to bin/foo (executable: true)

The above command shouldn't include the man page anymore

We can specify an empty list to install nothing
  $ dune install --dry-run --prefix ./ --sections ""
  Installing lib/foo/META
  Installing lib/foo/dune-package
  Installing bin/foo
  Installing man/mp
  Creating directory lib/foo
  Copying _build/install/default/lib/foo/META to lib/foo/META (executable: false)
  Creating directory lib/foo
  Copying _build/install/default/lib/foo/dune-package to lib/foo/dune-package (executable: false)
  Creating directory bin
  Copying _build/install/default/bin/foo to bin/foo (executable: true)
  Creating directory man
  Copying _build/install/default/man/mp to man/mp (executable: false)
