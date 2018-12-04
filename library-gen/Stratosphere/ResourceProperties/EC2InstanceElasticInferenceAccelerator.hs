{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html

module Stratosphere.ResourceProperties.EC2InstanceElasticInferenceAccelerator where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceElasticInferenceAccelerator. See
-- 'ec2InstanceElasticInferenceAccelerator' for a more convenient
-- constructor.
data EC2InstanceElasticInferenceAccelerator =
  EC2InstanceElasticInferenceAccelerator
  { _eC2InstanceElasticInferenceAcceleratorType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceElasticInferenceAccelerator where
  toJSON EC2InstanceElasticInferenceAccelerator{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _eC2InstanceElasticInferenceAcceleratorType
    ]

instance FromJSON EC2InstanceElasticInferenceAccelerator where
  parseJSON (Object obj) =
    EC2InstanceElasticInferenceAccelerator <$>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'EC2InstanceElasticInferenceAccelerator' containing
-- required fields as arguments.
ec2InstanceElasticInferenceAccelerator
  :: Val Text -- ^ 'ecieiaType'
  -> EC2InstanceElasticInferenceAccelerator
ec2InstanceElasticInferenceAccelerator typearg =
  EC2InstanceElasticInferenceAccelerator
  { _eC2InstanceElasticInferenceAcceleratorType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type
ecieiaType :: Lens' EC2InstanceElasticInferenceAccelerator (Val Text)
ecieiaType = lens _eC2InstanceElasticInferenceAcceleratorType (\s a -> s { _eC2InstanceElasticInferenceAcceleratorType = a })
