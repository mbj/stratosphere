{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html

module Stratosphere.ResourceProperties.EC2InstanceAssociationParameter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2InstanceAssociationParameter. See
-- | 'ec2InstanceAssociationParameter' for a more convenient constructor.
data EC2InstanceAssociationParameter =
  EC2InstanceAssociationParameter
  { _eC2InstanceAssociationParameterKey :: Val Text
  , _eC2InstanceAssociationParameterValue :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON EC2InstanceAssociationParameter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

instance FromJSON EC2InstanceAssociationParameter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

-- | Constructor for 'EC2InstanceAssociationParameter' containing required
-- | fields as arguments.
ec2InstanceAssociationParameter
  :: Val Text -- ^ 'eciapKey'
  -> [Val Text] -- ^ 'eciapValue'
  -> EC2InstanceAssociationParameter
ec2InstanceAssociationParameter keyarg valuearg =
  EC2InstanceAssociationParameter
  { _eC2InstanceAssociationParameterKey = keyarg
  , _eC2InstanceAssociationParameterValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-key
eciapKey :: Lens' EC2InstanceAssociationParameter (Val Text)
eciapKey = lens _eC2InstanceAssociationParameterKey (\s a -> s { _eC2InstanceAssociationParameterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-value
eciapValue :: Lens' EC2InstanceAssociationParameter [Val Text]
eciapValue = lens _eC2InstanceAssociationParameterValue (\s a -> s { _eC2InstanceAssociationParameterValue = a })
