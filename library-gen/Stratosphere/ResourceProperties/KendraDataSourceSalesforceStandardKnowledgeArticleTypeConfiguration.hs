{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration. See
-- 'kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration' for
-- a more convenient constructor.
data KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration =
  KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration
  { _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration where
  toJSON KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentTitleFieldName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationFieldMappings
    ]

-- | Constructor for
-- 'KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration
  :: Val Text -- ^ 'kdssskatcDocumentDataFieldName'
  -> KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration
kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration documentDataFieldNamearg =
  KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration
  { _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationFieldMappings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-documentdatafieldname
kdssskatcDocumentDataFieldName :: Lens' KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration (Val Text)
kdssskatcDocumentDataFieldName = lens _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-documenttitlefieldname
kdssskatcDocumentTitleFieldName :: Lens' KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration (Maybe (Val Text))
kdssskatcDocumentTitleFieldName = lens _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration.html#cfn-kendra-datasource-salesforcestandardknowledgearticletypeconfiguration-fieldmappings
kdssskatcFieldMappings :: Lens' KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdssskatcFieldMappings = lens _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationFieldMappings (\s a -> s { _kendraDataSourceSalesforceStandardKnowledgeArticleTypeConfigurationFieldMappings = a })
