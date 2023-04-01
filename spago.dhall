{ name = "purescript-lua-newtype"
, dependencies = [ "lua-prelude", "lua-safe-coerce" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend =
    ''
    pslua \
    --foreign-path . \
    --ps-output output \
    --lua-output-file dist/Data_Newtype.lua \
    --entry Data.Newtype
    ''
}
