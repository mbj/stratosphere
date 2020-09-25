{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceServiceNowKnowledgeArticleConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceServiceNowKnowledgeArticleConfiguration. See
-- 'kendraDataSourceServiceNowKnowledgeArticleConfiguration' for a more
-- convenient constructor.
data KendraDataSourceServiceNowKnowledgeArticleConfiguration =
  KendraDataSourceServiceNowKnowledgeArticleConfiguration
  { _kendraDataSourceServiceNowKnowledgeArticleConfigurationCrawlAttachments :: Maybe (Val Bool)
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationExcludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationIncludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceServiceNowKnowledgeArticleConfiguration where
  toJSON KendraDataSourceServiceNowKnowledgeArticleConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CrawlAttachments",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationCrawlAttachments
    , (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentTitleFieldName
    , fmap (("ExcludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationExcludeAttachmentFilePatterns
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationFieldMappings
    , fmap (("IncludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceServiceNowKnowledgeArticleConfigurationIncludeAttachmentFilePatterns
    ]

-- | Constructor for 'KendraDataSourceServiceNowKnowledgeArticleConfiguration'
-- containing required fields as arguments.
kendraDataSourceServiceNowKnowledgeArticleConfiguration
  :: Val Text -- ^ 'kdssnkacDocumentDataFieldName'
  -> KendraDataSourceServiceNowKnowledgeArticleConfiguration
kendraDataSourceServiceNowKnowledgeArticleConfiguration documentDataFieldNamearg =
  KendraDataSourceServiceNowKnowledgeArticleConfiguration
  { _kendraDataSourceServiceNowKnowledgeArticleConfigurationCrawlAttachments = Nothing
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationExcludeAttachmentFilePatterns = Nothing
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationFieldMappings = Nothing
  , _kendraDataSourceServiceNowKnowledgeArticleConfigurationIncludeAttachmentFilePatterns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-crawlattachments
kdssnkacCrawlAttachments :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Maybe (Val Bool))
kdssnkacCrawlAttachments = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationCrawlAttachments (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationCrawlAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-documentdatafieldname
kdssnkacDocumentDataFieldName :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Val Text)
kdssnkacDocumentDataFieldName = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-documenttitlefieldname
kdssnkacDocumentTitleFieldName :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Maybe (Val Text))
kdssnkacDocumentTitleFieldName = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-excludeattachmentfilepatterns
kdssnkacExcludeAttachmentFilePatterns :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssnkacExcludeAttachmentFilePatterns = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationExcludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationExcludeAttachmentFilePatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-fieldmappings
kdssnkacFieldMappings :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdssnkacFieldMappings = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationFieldMappings (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowknowledgearticleconfiguration.html#cfn-kendra-datasource-servicenowknowledgearticleconfiguration-includeattachmentfilepatterns
kdssnkacIncludeAttachmentFilePatterns :: Lens' KendraDataSourceServiceNowKnowledgeArticleConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssnkacIncludeAttachmentFilePatterns = lens _kendraDataSourceServiceNowKnowledgeArticleConfigurationIncludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceServiceNowKnowledgeArticleConfigurationIncludeAttachmentFilePatterns = a })
