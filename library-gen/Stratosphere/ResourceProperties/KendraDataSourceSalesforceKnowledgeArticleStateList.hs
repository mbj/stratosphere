{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticlestatelist.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceKnowledgeArticleStateList where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceSalesforceKnowledgeArticleStateList. See
-- 'kendraDataSourceSalesforceKnowledgeArticleStateList' for a more
-- convenient constructor.
data KendraDataSourceSalesforceKnowledgeArticleStateList =
  KendraDataSourceSalesforceKnowledgeArticleStateList
  { _kendraDataSourceSalesforceKnowledgeArticleStateListSalesforceKnowledgeArticleStateList :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceKnowledgeArticleStateList where
  toJSON KendraDataSourceSalesforceKnowledgeArticleStateList{..} =
    object $
    catMaybes
    [ fmap (("SalesforceKnowledgeArticleStateList",) . toJSON) _kendraDataSourceSalesforceKnowledgeArticleStateListSalesforceKnowledgeArticleStateList
    ]

-- | Constructor for 'KendraDataSourceSalesforceKnowledgeArticleStateList'
-- containing required fields as arguments.
kendraDataSourceSalesforceKnowledgeArticleStateList
  :: KendraDataSourceSalesforceKnowledgeArticleStateList
kendraDataSourceSalesforceKnowledgeArticleStateList  =
  KendraDataSourceSalesforceKnowledgeArticleStateList
  { _kendraDataSourceSalesforceKnowledgeArticleStateListSalesforceKnowledgeArticleStateList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticlestatelist.html#cfn-kendra-datasource-salesforceknowledgearticlestatelist-salesforceknowledgearticlestatelist
kdsskaslSalesforceKnowledgeArticleStateList :: Lens' KendraDataSourceSalesforceKnowledgeArticleStateList (Maybe (ValList Text))
kdsskaslSalesforceKnowledgeArticleStateList = lens _kendraDataSourceSalesforceKnowledgeArticleStateListSalesforceKnowledgeArticleStateList (\s a -> s { _kendraDataSourceSalesforceKnowledgeArticleStateListSalesforceKnowledgeArticleStateList = a })
