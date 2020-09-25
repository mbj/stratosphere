{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceServiceNowServiceCatalogConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceServiceNowServiceCatalogConfiguration. See
-- 'kendraDataSourceServiceNowServiceCatalogConfiguration' for a more
-- convenient constructor.
data KendraDataSourceServiceNowServiceCatalogConfiguration =
  KendraDataSourceServiceNowServiceCatalogConfiguration
  { _kendraDataSourceServiceNowServiceCatalogConfigurationCrawlAttachments :: Maybe (Val Bool)
  , _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceServiceNowServiceCatalogConfigurationExcludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceServiceNowServiceCatalogConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceServiceNowServiceCatalogConfigurationIncludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceServiceNowServiceCatalogConfiguration where
  toJSON KendraDataSourceServiceNowServiceCatalogConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CrawlAttachments",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationCrawlAttachments
    , (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentTitleFieldName
    , fmap (("ExcludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationExcludeAttachmentFilePatterns
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationFieldMappings
    , fmap (("IncludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceServiceNowServiceCatalogConfigurationIncludeAttachmentFilePatterns
    ]

-- | Constructor for 'KendraDataSourceServiceNowServiceCatalogConfiguration'
-- containing required fields as arguments.
kendraDataSourceServiceNowServiceCatalogConfiguration
  :: Val Text -- ^ 'kdssnsccDocumentDataFieldName'
  -> KendraDataSourceServiceNowServiceCatalogConfiguration
kendraDataSourceServiceNowServiceCatalogConfiguration documentDataFieldNamearg =
  KendraDataSourceServiceNowServiceCatalogConfiguration
  { _kendraDataSourceServiceNowServiceCatalogConfigurationCrawlAttachments = Nothing
  , _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceServiceNowServiceCatalogConfigurationExcludeAttachmentFilePatterns = Nothing
  , _kendraDataSourceServiceNowServiceCatalogConfigurationFieldMappings = Nothing
  , _kendraDataSourceServiceNowServiceCatalogConfigurationIncludeAttachmentFilePatterns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-crawlattachments
kdssnsccCrawlAttachments :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Maybe (Val Bool))
kdssnsccCrawlAttachments = lens _kendraDataSourceServiceNowServiceCatalogConfigurationCrawlAttachments (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationCrawlAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-documentdatafieldname
kdssnsccDocumentDataFieldName :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Val Text)
kdssnsccDocumentDataFieldName = lens _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-documenttitlefieldname
kdssnsccDocumentTitleFieldName :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Maybe (Val Text))
kdssnsccDocumentTitleFieldName = lens _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-excludeattachmentfilepatterns
kdssnsccExcludeAttachmentFilePatterns :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssnsccExcludeAttachmentFilePatterns = lens _kendraDataSourceServiceNowServiceCatalogConfigurationExcludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationExcludeAttachmentFilePatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-fieldmappings
kdssnsccFieldMappings :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdssnsccFieldMappings = lens _kendraDataSourceServiceNowServiceCatalogConfigurationFieldMappings (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowservicecatalogconfiguration.html#cfn-kendra-datasource-servicenowservicecatalogconfiguration-includeattachmentfilepatterns
kdssnsccIncludeAttachmentFilePatterns :: Lens' KendraDataSourceServiceNowServiceCatalogConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssnsccIncludeAttachmentFilePatterns = lens _kendraDataSourceServiceNowServiceCatalogConfigurationIncludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceServiceNowServiceCatalogConfigurationIncludeAttachmentFilePatterns = a })
