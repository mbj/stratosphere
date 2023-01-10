
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html

module Stratosphere.ResourceProperties.EC2InstanceHibernationOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceHibernationOptions. See
-- 'ec2InstanceHibernationOptions' for a more convenient constructor.
data EC2InstanceHibernationOptions =
  EC2InstanceHibernationOptions
  { _eC2InstanceHibernationOptionsConfigured :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceHibernationOptions where
  toJSON EC2InstanceHibernationOptions{..} =
    object $
    catMaybes
    [ fmap (("Configured",) . toJSON) _eC2InstanceHibernationOptionsConfigured
    ]

-- | Constructor for 'EC2InstanceHibernationOptions' containing required
-- fields as arguments.
ec2InstanceHibernationOptions
  :: EC2InstanceHibernationOptions
ec2InstanceHibernationOptions  =
  EC2InstanceHibernationOptions
  { _eC2InstanceHibernationOptionsConfigured = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-hibernationoptions.html#cfn-ec2-instance-hibernationoptions-configured
ecihoConfigured :: Lens' EC2InstanceHibernationOptions (Maybe (Val Bool))
ecihoConfigured = lens _eC2InstanceHibernationOptionsConfigured (\s a -> s { _eC2InstanceHibernationOptionsConfigured = a })
