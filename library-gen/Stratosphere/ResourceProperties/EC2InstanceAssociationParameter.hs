{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html

module Stratosphere.ResourceProperties.EC2InstanceAssociationParameter where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2InstanceAssociationParameter. See
-- | 'ec2InstanceAssociationParameter' for a more convenient constructor.
data EC2InstanceAssociationParameter =
  EC2InstanceAssociationParameter
  { _eC2InstanceAssociationParameterKey :: Val Text
  , _eC2InstanceAssociationParameterValue :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON EC2InstanceAssociationParameter where
  toJSON EC2InstanceAssociationParameter{..} =
    object
    [ "Key" .= _eC2InstanceAssociationParameterKey
    , "Value" .= _eC2InstanceAssociationParameterValue
    ]

instance FromJSON EC2InstanceAssociationParameter where
  parseJSON (Object obj) =
    EC2InstanceAssociationParameter <$>
      obj .: "Key" <*>
      obj .: "Value"
  parseJSON _ = mempty

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
