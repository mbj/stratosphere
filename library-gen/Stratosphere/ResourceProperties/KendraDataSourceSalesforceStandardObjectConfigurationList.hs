{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfigurationlist.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectConfigurationList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectConfiguration

-- | Full data type definition for
-- KendraDataSourceSalesforceStandardObjectConfigurationList. See
-- 'kendraDataSourceSalesforceStandardObjectConfigurationList' for a more
-- convenient constructor.
data KendraDataSourceSalesforceStandardObjectConfigurationList =
  KendraDataSourceSalesforceStandardObjectConfigurationList
  { _kendraDataSourceSalesforceStandardObjectConfigurationListSalesforceStandardObjectConfigurationList :: Maybe [KendraDataSourceSalesforceStandardObjectConfiguration]
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceStandardObjectConfigurationList where
  toJSON KendraDataSourceSalesforceStandardObjectConfigurationList{..} =
    object $
    catMaybes
    [ fmap (("SalesforceStandardObjectConfigurationList",) . toJSON) _kendraDataSourceSalesforceStandardObjectConfigurationListSalesforceStandardObjectConfigurationList
    ]

-- | Constructor for
-- 'KendraDataSourceSalesforceStandardObjectConfigurationList' containing
-- required fields as arguments.
kendraDataSourceSalesforceStandardObjectConfigurationList
  :: KendraDataSourceSalesforceStandardObjectConfigurationList
kendraDataSourceSalesforceStandardObjectConfigurationList  =
  KendraDataSourceSalesforceStandardObjectConfigurationList
  { _kendraDataSourceSalesforceStandardObjectConfigurationListSalesforceStandardObjectConfigurationList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfigurationlist.html#cfn-kendra-datasource-salesforcestandardobjectconfigurationlist-salesforcestandardobjectconfigurationlist
kdsssoclSalesforceStandardObjectConfigurationList :: Lens' KendraDataSourceSalesforceStandardObjectConfigurationList (Maybe [KendraDataSourceSalesforceStandardObjectConfiguration])
kdsssoclSalesforceStandardObjectConfigurationList = lens _kendraDataSourceSalesforceStandardObjectConfigurationListSalesforceStandardObjectConfigurationList (\s a -> s { _kendraDataSourceSalesforceStandardObjectConfigurationListSalesforceStandardObjectConfigurationList = a })
