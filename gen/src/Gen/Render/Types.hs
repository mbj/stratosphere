module Gen.Render.Types
  ( Module (..)
  , moduleFromPropertyType
  , moduleFromResourceType
  ) where

import Data.Text (Text)

import Gen.Specifications

data Module
  = Module
  { moduleName :: Text
  , modulePath :: Text
  , moduleDocumentation :: Text
  , moduleAWSType :: Maybe Text
  , moduleProperties :: [Property]
  }
  deriving (Show, Eq)

moduleFromPropertyType :: PropertyType -> Module
moduleFromPropertyType (PropertyType name doc props) =
  Module name "Stratosphere.ResourceProperties" doc Nothing props

moduleFromResourceType :: ResourceType -> Module
moduleFromResourceType (ResourceType name type' doc props) =
  Module name "Stratosphere.Resources" doc (Just type') props
