{-# LANGUAGE OverloadedStrings #-}

-- | Renders the constructor that includes required values.

module Gen.Constructor where

import Control.Lens
import Data.Char (isUpper, toLower, isNumber)
import Data.Monoid ((<>))
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Docstring
import Gen.Lens
import Gen.Resource
import Gen.Types

-- | Renders the default constructor function to Text.
renderConstructor :: Resource -> T.Text
renderConstructor res = T.concat [docstring, typeDecl, funcHead, fieldText, footer]
  where docstring = constDocstring res
        cname = constructorName res
        typeDecl = T.concat [cname, "\n", renderTypes res, "\n"]
        argNames = map argName (requiredParams res)
        args = T.intercalate " " argNames
        funcHead = T.concat [cname, " ", args, " =\n  ", res ^. name, "\n  { "]
        fields = fmap (constructorField (res ^. name)) (res ^. parameters)
        fieldLines = map (\(n, v) -> T.concat [n, " = ", v]) fields
        fieldText = T.intercalate "\n  , " fieldLines
        footer = "\n  }"

constDocstring :: Resource -> T.Text
constDocstring res = renderDocstring doc  <> "\n"
  where doc = "Constructor for '" <> res ^. name <>
              "' containing required fields as arguments."

renderTypes :: Resource -> T.Text
renderTypes res = T.intercalate "\n" lines'
  where typePrefixes = "  :: " : repeat "  -> "
        types = constructorTypes res
        req = requiredParams res
        comments = fmap (\r -> T.concat [" -- ^ ", "'", lensName res r, "'"]) req
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

consecutiveHeadLower :: String -> String
consecutiveHeadLower [] = []
consecutiveHeadLower [x] = [toLower x]
consecutiveHeadLower (x:nx:xs) = if isUpper x && (isUpper nx || isNumber nx)
                                 then toLower x : consecutiveHeadLower (nx:xs)
                                 else x:nx:xs


-- | Name used for the parameter's argument in the constructor.
argName :: ResourceParameter -> T.Text
argName rp = T.concat [lowerHead $ rp ^. name, "arg"]
