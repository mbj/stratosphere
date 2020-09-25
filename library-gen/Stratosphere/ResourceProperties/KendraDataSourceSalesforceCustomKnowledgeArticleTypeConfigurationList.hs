{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfigurationlist.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration

-- | Full data type definition for
-- KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList.
-- See
-- 'kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList'
-- for a more convenient constructor.
data KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList =
  KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
  { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationListSalesforceCustomKnowledgeArticleTypeConfigurationList :: Maybe [KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration]
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList where
  toJSON KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList{..} =
    object $
    catMaybes
    [ fmap (("SalesforceCustomKnowledgeArticleTypeConfigurationList",) . toJSON) _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationListSalesforceCustomKnowledgeArticleTypeConfigurationList
    ]

-- | Constructor for
-- 'KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList'
-- containing required fields as arguments.
kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
  :: KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList  =
  KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
  { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationListSalesforceCustomKnowledgeArticleTypeConfigurationList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfigurationlist.html#cfn-kendra-datasource-salesforcecustomknowledgearticletypeconfigurationlist-salesforcecustomknowledgearticletypeconfigurationlist
kdssckatclSalesforceCustomKnowledgeArticleTypeConfigurationList :: Lens' KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList (Maybe [KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration])
kdssckatclSalesforceCustomKnowledgeArticleTypeConfigurationList = lens _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationListSalesforceCustomKnowledgeArticleTypeConfigurationList (\s a -> s { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationListSalesforceCustomKnowledgeArticleTypeConfigurationList = a })
