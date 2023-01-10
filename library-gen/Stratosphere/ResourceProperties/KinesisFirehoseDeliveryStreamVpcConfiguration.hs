
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamVpcConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamVpcConfiguration. See
-- 'kinesisFirehoseDeliveryStreamVpcConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamVpcConfiguration =
  KinesisFirehoseDeliveryStreamVpcConfiguration
  { _kinesisFirehoseDeliveryStreamVpcConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamVpcConfigurationSecurityGroupIds :: ValList Text
  , _kinesisFirehoseDeliveryStreamVpcConfigurationSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamVpcConfiguration where
  toJSON KinesisFirehoseDeliveryStreamVpcConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamVpcConfigurationRoleARN
    , (Just . ("SecurityGroupIds",) . toJSON) _kinesisFirehoseDeliveryStreamVpcConfigurationSecurityGroupIds
    , (Just . ("SubnetIds",) . toJSON) _kinesisFirehoseDeliveryStreamVpcConfigurationSubnetIds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamVpcConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamVpcConfiguration
  :: Val Text -- ^ 'kfdsvcRoleARN'
  -> ValList Text -- ^ 'kfdsvcSecurityGroupIds'
  -> ValList Text -- ^ 'kfdsvcSubnetIds'
  -> KinesisFirehoseDeliveryStreamVpcConfiguration
kinesisFirehoseDeliveryStreamVpcConfiguration roleARNarg securityGroupIdsarg subnetIdsarg =
  KinesisFirehoseDeliveryStreamVpcConfiguration
  { _kinesisFirehoseDeliveryStreamVpcConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamVpcConfigurationSecurityGroupIds = securityGroupIdsarg
  , _kinesisFirehoseDeliveryStreamVpcConfigurationSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-rolearn
kfdsvcRoleARN :: Lens' KinesisFirehoseDeliveryStreamVpcConfiguration (Val Text)
kfdsvcRoleARN = lens _kinesisFirehoseDeliveryStreamVpcConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamVpcConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-securitygroupids
kfdsvcSecurityGroupIds :: Lens' KinesisFirehoseDeliveryStreamVpcConfiguration (ValList Text)
kfdsvcSecurityGroupIds = lens _kinesisFirehoseDeliveryStreamVpcConfigurationSecurityGroupIds (\s a -> s { _kinesisFirehoseDeliveryStreamVpcConfigurationSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-vpcconfiguration.html#cfn-kinesisfirehose-deliverystream-vpcconfiguration-subnetids
kfdsvcSubnetIds :: Lens' KinesisFirehoseDeliveryStreamVpcConfiguration (ValList Text)
kfdsvcSubnetIds = lens _kinesisFirehoseDeliveryStreamVpcConfigurationSubnetIds (\s a -> s { _kinesisFirehoseDeliveryStreamVpcConfigurationSubnetIds = a })
