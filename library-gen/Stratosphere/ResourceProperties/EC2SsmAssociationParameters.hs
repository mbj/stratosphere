{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | AssociationParameters is a property of the Amazon EC2 Instance
-- SsmAssociations property that specifies input parameter values for an
-- Amazon EC2 Simple Systems Manager (SSM) document.

module Stratosphere.ResourceProperties.EC2SsmAssociationParameters where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SsmAssociationParameters. See
-- 'ec2SsmAssociationParameters' for a more convenient constructor.
data EC2SsmAssociationParameters =
  EC2SsmAssociationParameters
  { _eC2SsmAssociationParametersKey :: Val Text
  , _eC2SsmAssociationParametersValue :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON EC2SsmAssociationParameters where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON EC2SsmAssociationParameters where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'EC2SsmAssociationParameters' containing required fields
-- as arguments.
ec2SsmAssociationParameters
  :: Val Text -- ^ Key
  -> [Val Text] -- ^ Value
  -> EC2SsmAssociationParameters
ec2SsmAssociationParameters keyarg valuearg =
  EC2SsmAssociationParameters
  { _eC2SsmAssociationParametersKey = keyarg
  , _eC2SsmAssociationParametersValue = valuearg
  }

-- | The name of an input parameter that is in the associated SSM document.
ecsapKey :: Lens' EC2SsmAssociationParameters (Val Text)
ecsapKey = lens _eC2SsmAssociationParametersKey (\s a -> s { _eC2SsmAssociationParametersKey = a })

-- | The value of an input parameter.
ecsapValue :: Lens' EC2SsmAssociationParameters [Val Text]
ecsapValue = lens _eC2SsmAssociationParametersValue (\s a -> s { _eC2SsmAssociationParametersValue = a })