{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration. See
-- 'kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration' for a
-- more convenient constructor.
data KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration =
  KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration
  { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration where
  toJSON KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentTitleFieldName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationFieldMappings
    , (Just . ("Name",) . toJSON) _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationName
    ]

-- | Constructor for
-- 'KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration
  :: Val Text -- ^ 'kdssckatcDocumentDataFieldName'
  -> Val Text -- ^ 'kdssckatcName'
  -> KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration
kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration documentDataFieldNamearg namearg =
  KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration
  { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationFieldMappings = Nothing
  , _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration-documentdatafieldname
kdssckatcDocumentDataFieldName :: Lens' KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration (Val Text)
kdssckatcDocumentDataFieldName = lens _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration-documenttitlefieldname
kdssckatcDocumentTitleFieldName :: Lens' KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration (Maybe (Val Text))
kdssckatcDocumentTitleFieldName = lens _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration-fieldmappings
kdssckatcFieldMappings :: Lens' KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdssckatcFieldMappings = lens _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationFieldMappings (\s a -> s { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcecustomknowledgearticletypeconfiguration-name
kdssckatcName :: Lens' KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfiguration (Val Text)
kdssckatcName = lens _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationName (\s a -> s { _kendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationName = a })
