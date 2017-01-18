{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html

module Stratosphere.ResourceProperties.SSMAssociationTarget where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for SSMAssociationTarget. See
-- | 'ssmAssociationTarget' for a more convenient constructor.
data SSMAssociationTarget =
  SSMAssociationTarget
  { _sSMAssociationTargetKey :: Val Text
  , _sSMAssociationTargetValues :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON SSMAssociationTarget where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON SSMAssociationTarget where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'SSMAssociationTarget' containing required fields as
-- | arguments.
ssmAssociationTarget
  :: Val Text -- ^ 'ssmatKey'
  -> [Val Text] -- ^ 'ssmatValues'
  -> SSMAssociationTarget
ssmAssociationTarget keyarg valuesarg =
  SSMAssociationTarget
  { _sSMAssociationTargetKey = keyarg
  , _sSMAssociationTargetValues = valuesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-key
ssmatKey :: Lens' SSMAssociationTarget (Val Text)
ssmatKey = lens _sSMAssociationTargetKey (\s a -> s { _sSMAssociationTargetKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-association-target.html#cfn-ssm-association-target-values
ssmatValues :: Lens' SSMAssociationTarget [Val Text]
ssmatValues = lens _sSMAssociationTargetValues (\s a -> s { _sSMAssociationTargetValues = a })
