# Stratosphere Generator

This directory contains the code generator that produces Stratosphere Haskell modules from the AWS CloudFormation Resource Specification.

## Code Generation

The generator uses the GHC AST (via `ghc-source-gen`) to generate Haskell modules. This approach allows us to leverage the full power of the Haskell language without re-implementing Haskell syntax.

## Haddock Documentation Generation

The generator attaches Haddock documentation comments to generated data types and fields using the GHC AST's documentation facilities:

- **Data type documentation**: Attached via `con_doc` field in `ConDeclH98`/`ConDeclGADT`
- **Field documentation**: Attached via `cd_fld_doc` field in `ConDeclField`

Documentation URLs from the CloudFormation specification are formatted as clickable Haddock links:
```haskell
-- | See: <http://docs.aws.amazon.com/...>
```

### The `haddock_workaround_` Field Hack

**Problem**: When the first field in a record constructor has Haddock documentation, GHC's AST pretty-printer outputs:
```haskell
data Foo = Foo {-- | Documentation
                field :: Type}
```

The `{--` sequence is interpreted as the start of a block comment, causing a syntax error.

**Solution**: Every generated record includes a dummy first field `haddock_workaround_ :: ()` that:
- Has **no documentation** (avoiding the `{--` issue)
- Uses unit type `()` (only one value needed)
- Is **automatically initialized** in builder functions to `()`
- Is **excluded from serialization** (not in `ToResourceProperties` or `ToJSON` instances)
- Is **skipped in pattern matching** (record wildcard starts at index 1)

This allows all real CloudFormation fields to have proper documentation without syntax errors.

Example generated code:
```haskell
data Certificate
  = -- | See: <http://docs.aws.amazon.com/.../aws-resource-acmpca-certificate.html>
    Certificate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/.../cfn-acmpca-certificate-apipassthrough>
                 apiPassthrough :: (Prelude.Maybe ApiPassthroughProperty),
                 ...}

mkCertificate ... = Certificate {haddock_workaround_ = (), ...}
```

Users never interact with this field - it's purely an internal workaround for the GHC pretty-printer limitation.
