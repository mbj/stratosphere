{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Resources.EC2.EIPAssociation
       ( EIPAssociation (..)
       , eipAssociationDefault

       -- Lenses
       , allocationId
       , eIP
       , instanceId
       , networkInterfaceId
       , privateIpAddress
       ) where

import Control.Lens.TH
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T

import Stratosphere.Helpers
import Stratosphere.Resources.EC2.EIP (HasInstanceId, instanceId)
import Stratosphere.Resources.EC2.Instance (HasPrivateIpAddress, privateIpAddress)
import Stratosphere.Template
import Stratosphere.Values

data EIPAssociation =
  EIPAssociation
  { eipAssociationAllocationId :: Maybe (Val T.Text)
  , eipAssociationEIP :: Maybe (Val T.Text)
  , eipAssociationInstanceId :: Maybe (Val T.Text)
  , eipAssociationNetworkInterfaceId :: Maybe (Val T.Text)
  , eipAssociationPrivateIpAddress :: Maybe (Val T.Text)
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 3
                            , omitNothingFields = True } ''EIPAssociation)
$(makeLensesWith (prefixFieldRules "eipAssociation") ''EIPAssociation)


eipAssociationDefault :: EIPAssociation
eipAssociationDefault =
  EIPAssociation
  { eipAssociationAllocationId = Nothing
  , eipAssociationEIP = Nothing
  , eipAssociationInstanceId = Nothing
  , eipAssociationNetworkInterfaceId = Nothing
  , eipAssociationPrivateIpAddress = Nothing
  }


instance ToResource EIPAssociation where
  toResource props =
    Resource
    { resourceType' = "AWS::EC2::EIPAssociation"
    , resourceProperties = props'
    }
    where (Object props') = toJSON props
