{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedincludefiltertypes.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceChatterFeedIncludeFilterTypes where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceSalesforceChatterFeedIncludeFilterTypes. See
-- 'kendraDataSourceSalesforceChatterFeedIncludeFilterTypes' for a more
-- convenient constructor.
data KendraDataSourceSalesforceChatterFeedIncludeFilterTypes =
  KendraDataSourceSalesforceChatterFeedIncludeFilterTypes
  { _kendraDataSourceSalesforceChatterFeedIncludeFilterTypesSalesforceChatterFeedIncludeFilterTypes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceChatterFeedIncludeFilterTypes where
  toJSON KendraDataSourceSalesforceChatterFeedIncludeFilterTypes{..} =
    object $
    catMaybes
    [ fmap (("SalesforceChatterFeedIncludeFilterTypes",) . toJSON) _kendraDataSourceSalesforceChatterFeedIncludeFilterTypesSalesforceChatterFeedIncludeFilterTypes
    ]

-- | Constructor for 'KendraDataSourceSalesforceChatterFeedIncludeFilterTypes'
-- containing required fields as arguments.
kendraDataSourceSalesforceChatterFeedIncludeFilterTypes
  :: KendraDataSourceSalesforceChatterFeedIncludeFilterTypes
kendraDataSourceSalesforceChatterFeedIncludeFilterTypes  =
  KendraDataSourceSalesforceChatterFeedIncludeFilterTypes
  { _kendraDataSourceSalesforceChatterFeedIncludeFilterTypesSalesforceChatterFeedIncludeFilterTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedincludefiltertypes.html#cfn-kendra-datasource-salesforcechatterfeedincludefiltertypes-salesforcechatterfeedincludefiltertypes
kdsscfiftSalesforceChatterFeedIncludeFilterTypes :: Lens' KendraDataSourceSalesforceChatterFeedIncludeFilterTypes (Maybe (ValList Text))
kdsscfiftSalesforceChatterFeedIncludeFilterTypes = lens _kendraDataSourceSalesforceChatterFeedIncludeFilterTypesSalesforceChatterFeedIncludeFilterTypes (\s a -> s { _kendraDataSourceSalesforceChatterFeedIncludeFilterTypesSalesforceChatterFeedIncludeFilterTypes = a })
