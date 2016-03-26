{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Resources.EC2.EIP
       ( EIP (..)
       , eipDefault

       -- Lenses
       , HasInstanceId
       , instanceId
       , domain
       ) where

import Control.Lens.TH
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T

import Stratosphere.Helpers
import Stratosphere.Template
import Stratosphere.Values

data EIP =
  EIP
  { eipInstanceId :: Maybe (Val T.Text)
  , eipDomain :: Maybe (Val T.Text)
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 3
                            , omitNothingFields = True } ''EIP)
$(makeLensesWith (prefixFieldRules "eip") ''EIP)


eipDefault :: EIP
eipDefault =
  EIP
  { eipInstanceId = Nothing
  , eipDomain = Nothing
  }


instance ToResource EIP where
  toResource props =
    Resource
    { resourceType' = "AWS::EC2::EIP"
    , resourceProperties = props'
    }
    where (Object props') = toJSON props
