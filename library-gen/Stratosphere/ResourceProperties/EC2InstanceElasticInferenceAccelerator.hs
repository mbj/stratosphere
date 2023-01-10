
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html

module Stratosphere.ResourceProperties.EC2InstanceElasticInferenceAccelerator where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceElasticInferenceAccelerator. See
-- 'ec2InstanceElasticInferenceAccelerator' for a more convenient
-- constructor.
data EC2InstanceElasticInferenceAccelerator =
  EC2InstanceElasticInferenceAccelerator
  { _eC2InstanceElasticInferenceAcceleratorCount :: Maybe (Val Integer)
  , _eC2InstanceElasticInferenceAcceleratorType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceElasticInferenceAccelerator where
  toJSON EC2InstanceElasticInferenceAccelerator{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _eC2InstanceElasticInferenceAcceleratorCount
    , (Just . ("Type",) . toJSON) _eC2InstanceElasticInferenceAcceleratorType
    ]

-- | Constructor for 'EC2InstanceElasticInferenceAccelerator' containing
-- required fields as arguments.
ec2InstanceElasticInferenceAccelerator
  :: Val Text -- ^ 'ecieiaType'
  -> EC2InstanceElasticInferenceAccelerator
ec2InstanceElasticInferenceAccelerator typearg =
  EC2InstanceElasticInferenceAccelerator
  { _eC2InstanceElasticInferenceAcceleratorCount = Nothing
  , _eC2InstanceElasticInferenceAcceleratorType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-count
ecieiaCount :: Lens' EC2InstanceElasticInferenceAccelerator (Maybe (Val Integer))
ecieiaCount = lens _eC2InstanceElasticInferenceAcceleratorCount (\s a -> s { _eC2InstanceElasticInferenceAcceleratorCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type
ecieiaType :: Lens' EC2InstanceElasticInferenceAccelerator (Val Text)
ecieiaType = lens _eC2InstanceElasticInferenceAcceleratorType (\s a -> s { _eC2InstanceElasticInferenceAcceleratorType = a })
