{-# LANGUAGE OverloadedStrings #-}

-- | Renders the constructor that includes required values.

module Gen.Constructor where

import Control.Lens
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Resource
import Gen.Types

-- | Renders the default constructor function to Text.
renderConstructor :: Resource -> T.Text
renderConstructor res = T.concat [typeDecl, funcHead, fieldText, footer]
  where cname = constructorName res
        typeDecl = T.concat [cname, "\n", renderTypes res, "\n"]
        argNames = map argName (requiredParams res)
        args = T.intercalate " " argNames
        funcHead = T.concat [cname, " ", args, " =\n  ", res ^. name, "\n  { "]
        fields = fmap (constructorField (res ^. name)) (res ^. parameters)
        fieldLines = map (\(n, v) -> T.concat [n, " = ", v]) fields
        fieldText = T.intercalate "\n  , " fieldLines
        footer = "\n  }"


renderTypes :: Resource -> T.Text
renderTypes res = T.intercalate "\n" lines'
  where typePrefixes = "  :: " : repeat "  -> "
        types = constructorTypes res
        req = requiredParams res
        comments = fmap (\rp -> T.concat [" -- ^ ", rp ^. name]) req
        zipped = zip3 typePrefixes types (comments ++ [""])
        lines' = fmap (\(pre', t, c) -> T.concat [pre', t, c]) zipped

constructorTypes :: Resource -> [T.Text]
constructorTypes res = paramArgs ++ [res ^. name]
  where paramArgs = map renderFieldType (requiredParams res)

constructorField :: T.Text -> ResourceParameter -> (T.Text, T.Text)
constructorField resName rp = (fieldName, valName)
  where fieldName = renderFieldName resName rp
        valName = if rp ^. required then argName rp else "Nothing"

requiredParams :: Resource -> [ResourceParameter]
requiredParams = filter (^. required) . (^. parameters)

constructorName :: Resource -> T.Text
constructorName res = lowerHead $ res ^.name

-- | Name used for the parameter's argument in the constructor.
argName :: ResourceParameter -> T.Text
argName rp = T.concat [lowerHead $ rp ^. name, "arg"]
