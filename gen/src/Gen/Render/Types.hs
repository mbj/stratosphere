module Gen.Render.Types
  ( Module (..)
  , moduleFromPropertyType
  , moduleFromResourceType
  ) where

import Data.Char (isUpper, isNumber)
import qualified Data.Char as Char
import Data.Maybe (fromMaybe)
import Data.Monoid ((<>))
import Data.Text
import Data.Text.Manipulate (lowerHead, toAcronym)

import Gen.Specifications

data Module
  = Module
  { moduleName :: Text
    -- ^ Name of the type and module we'll generate
  , moduleFullAWSName :: Text
    -- ^ The original name given by AWS. Same as ResourceType for resources.
  , moduleResourceType :: Text
    -- ^ The type of resources (example: AWS::EC2::Instance)
  , moduleIsResource :: Bool
  , moduleConstructorName :: Text
  , moduleLensPrefix :: Text
  , moduleFieldPrefix :: Text
  , modulePath :: Text
    -- ^ The prefix for the stratosphere sub-module
  , moduleDocumentation :: Text
    -- ^ The documentation link
  , moduleProperties :: [Property]
  }
  deriving (Show, Eq)

moduleFromPropertyType :: PropertyType -> Module
moduleFromPropertyType (PropertyType fullName doc props) =
  Module
  (computeModuleName fullName)
  fullName
  (computeResourceType fullName)
  False
  (computeConstructorName fullName)
  (computeLensPrefix fullName)
  (computeFieldPrefix fullName)
  "Stratosphere.ResourceProperties"
  doc
  props

moduleFromResourceType :: ResourceType -> Module
moduleFromResourceType (ResourceType fullName doc props) =
  Module
  (computeModuleName fullName)
  fullName
  fullName
  True
  (computeConstructorName fullName)
  (computeLensPrefix fullName)
  (computeFieldPrefix fullName)
  "Stratosphere.Resources"
  doc
  props

-- | We name modules by using everything after the first "::" and removing
-- non-chars. For example, AWS::EC2::Instance is EC2Instance, and
-- AWS::EC2::Instance.Ebs is EC2InstanceEbs.
computeModuleName :: Text -> Text
computeModuleName fullName
  | "::" `isInfixOf` fullName =
    let [_, parent, baseName] = splitOn "::" fullName
    in Data.Text.filter (/= '.') (parent <> baseName)
  | otherwise = fullName

-- | The Resource Type is anything around the colons, but before the dot. The
-- resource type for AWS::EC2::Instance is the same thing: AWS::EC2::Instance.
-- The resource type for AWS::EC2::Instance.Ebs is AWS::EC2::Instance.
computeResourceType :: Text -> Text
computeResourceType fullName
  | "::" `isInfixOf` fullName && "." `isInfixOf` fullName =
    let [type', _] = splitOn "." fullName
    in type'
  | "::" `isInfixOf` fullName = fullName
  | otherwise = ""

computeConstructorName :: Text -> Text
computeConstructorName rawName = pack $ headLower $ unpack $ computeModuleName rawName

-- | Makes consecutive upper case characters lowercase
headLower :: String -> String
headLower [] = []
headLower (x:xs) = Char.toLower x : consecutiveHeadLower xs

consecutiveHeadLower :: String -> String
consecutiveHeadLower [] = []
consecutiveHeadLower [x] = [Char.toLower x]
consecutiveHeadLower (x:nx:xs) =
  if isUpper x && (isUpper nx || isNumber nx)
  then Char.toLower x : consecutiveHeadLower (nx:xs)
  else x:nx:xs

computeLensPrefix :: Text -> Text
computeLensPrefix rawName = toLower $ fromMaybe "" $ toAcronym $ computeModuleName rawName

computeFieldPrefix :: Text -> Text
computeFieldPrefix rawName = "_" <> lowerHead (computeModuleName rawName)
