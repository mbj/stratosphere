{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-aclconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceAclConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceAclConfiguration. See
-- 'kendraDataSourceAclConfiguration' for a more convenient constructor.
data KendraDataSourceAclConfiguration =
  KendraDataSourceAclConfiguration
  { _kendraDataSourceAclConfigurationAllowedGroupsColumnName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceAclConfiguration where
  toJSON KendraDataSourceAclConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("AllowedGroupsColumnName",) . toJSON) _kendraDataSourceAclConfigurationAllowedGroupsColumnName
    ]

-- | Constructor for 'KendraDataSourceAclConfiguration' containing required
-- fields as arguments.
kendraDataSourceAclConfiguration
  :: Val Text -- ^ 'kdsacAllowedGroupsColumnName'
  -> KendraDataSourceAclConfiguration
kendraDataSourceAclConfiguration allowedGroupsColumnNamearg =
  KendraDataSourceAclConfiguration
  { _kendraDataSourceAclConfigurationAllowedGroupsColumnName = allowedGroupsColumnNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-aclconfiguration.html#cfn-kendra-datasource-aclconfiguration-allowedgroupscolumnname
kdsacAllowedGroupsColumnName :: Lens' KendraDataSourceAclConfiguration (Val Text)
kdsacAllowedGroupsColumnName = lens _kendraDataSourceAclConfigurationAllowedGroupsColumnName (\s a -> s { _kendraDataSourceAclConfigurationAllowedGroupsColumnName = a })
