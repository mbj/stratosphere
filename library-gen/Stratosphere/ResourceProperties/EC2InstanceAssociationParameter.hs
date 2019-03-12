{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html

module Stratosphere.ResourceProperties.EC2InstanceAssociationParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceAssociationParameter. See
-- 'ec2InstanceAssociationParameter' for a more convenient constructor.
data EC2InstanceAssociationParameter =
  EC2InstanceAssociationParameter
  { _eC2InstanceAssociationParameterKey :: Val Text
  , _eC2InstanceAssociationParameterValue :: ValList Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceAssociationParameter where
  toJSON EC2InstanceAssociationParameter{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eC2InstanceAssociationParameterKey
    , (Just . ("Value",) . toJSON) _eC2InstanceAssociationParameterValue
    ]

-- | Constructor for 'EC2InstanceAssociationParameter' containing required
-- fields as arguments.
ec2InstanceAssociationParameter
  :: Val Text -- ^ 'eciapKey'
  -> ValList Text -- ^ 'eciapValue'
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
eciapValue :: Lens' EC2InstanceAssociationParameter (ValList Text)
eciapValue = lens _eC2InstanceAssociationParameterValue (\s a -> s { _eC2InstanceAssociationParameterValue = a })
