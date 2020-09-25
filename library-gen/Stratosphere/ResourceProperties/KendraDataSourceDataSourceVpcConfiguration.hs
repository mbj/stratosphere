{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcevpcconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceDataSourceVpcConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceDataSourceVpcConfiguration.
-- See 'kendraDataSourceDataSourceVpcConfiguration' for a more convenient
-- constructor.
data KendraDataSourceDataSourceVpcConfiguration =
  KendraDataSourceDataSourceVpcConfiguration
  { _kendraDataSourceDataSourceVpcConfigurationSecurityGroupIds :: ValList Text
  , _kendraDataSourceDataSourceVpcConfigurationSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDataSourceVpcConfiguration where
  toJSON KendraDataSourceDataSourceVpcConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("SecurityGroupIds",) . toJSON) _kendraDataSourceDataSourceVpcConfigurationSecurityGroupIds
    , (Just . ("SubnetIds",) . toJSON) _kendraDataSourceDataSourceVpcConfigurationSubnetIds
    ]

-- | Constructor for 'KendraDataSourceDataSourceVpcConfiguration' containing
-- required fields as arguments.
kendraDataSourceDataSourceVpcConfiguration
  :: ValList Text -- ^ 'kdsdsvcSecurityGroupIds'
  -> ValList Text -- ^ 'kdsdsvcSubnetIds'
  -> KendraDataSourceDataSourceVpcConfiguration
kendraDataSourceDataSourceVpcConfiguration securityGroupIdsarg subnetIdsarg =
  KendraDataSourceDataSourceVpcConfiguration
  { _kendraDataSourceDataSourceVpcConfigurationSecurityGroupIds = securityGroupIdsarg
  , _kendraDataSourceDataSourceVpcConfigurationSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcevpcconfiguration.html#cfn-kendra-datasource-datasourcevpcconfiguration-securitygroupids
kdsdsvcSecurityGroupIds :: Lens' KendraDataSourceDataSourceVpcConfiguration (ValList Text)
kdsdsvcSecurityGroupIds = lens _kendraDataSourceDataSourceVpcConfigurationSecurityGroupIds (\s a -> s { _kendraDataSourceDataSourceVpcConfigurationSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcevpcconfiguration.html#cfn-kendra-datasource-datasourcevpcconfiguration-subnetids
kdsdsvcSubnetIds :: Lens' KendraDataSourceDataSourceVpcConfiguration (ValList Text)
kdsdsvcSubnetIds = lens _kendraDataSourceDataSourceVpcConfigurationSubnetIds (\s a -> s { _kendraDataSourceDataSourceVpcConfigurationSubnetIds = a })
