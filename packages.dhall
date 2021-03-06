let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/ea2423043df6c90f0de754977923b6c5dfdddcfc/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200716/packages.dhall sha256:4050ea594934b33f0af8413b8d9c908d19e785469fd623d68d611b5bf3e597bd

let overrides = {=}

let additions =
      { ffi-simple =
          mkPackage
            [ "effect", "functions", "nullable", "prelude", "unsafe-coerce" ]
            "https://github.com/irresponsible/purescript-ffi-simple"
            "v0.2.10"
      , spec-mocha =
          mkPackage
            [ "console", "foldable-traversable", "exceptions", "spec" ]
            "https://github.com/purescript-spec/purescript-spec-mocha"
            "v4.0.0"
      }

in  upstream // overrides // additions
