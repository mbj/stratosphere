{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceChatterFeedConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceChatterFeedIncludeFilterTypes

-- | Full data type definition for
-- KendraDataSourceSalesforceChatterFeedConfiguration. See
-- 'kendraDataSourceSalesforceChatterFeedConfiguration' for a more
-- convenient constructor.
data KendraDataSourceSalesforceChatterFeedConfiguration =
  KendraDataSourceSalesforceChatterFeedConfiguration
  { _kendraDataSourceSalesforceChatterFeedConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceSalesforceChatterFeedConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSalesforceChatterFeedConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceSalesforceChatterFeedConfigurationIncludeFilterTypes :: Maybe KendraDataSourceSalesforceChatterFeedIncludeFilterTypes
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceChatterFeedConfiguration where
  toJSON KendraDataSourceSalesforceChatterFeedConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceSalesforceChatterFeedConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSalesforceChatterFeedConfigurationDocumentTitleFieldName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSalesforceChatterFeedConfigurationFieldMappings
    , fmap (("IncludeFilterTypes",) . toJSON) _kendraDataSourceSalesforceChatterFeedConfigurationIncludeFilterTypes
    ]

-- | Constructor for 'KendraDataSourceSalesforceChatterFeedConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceChatterFeedConfiguration
  :: Val Text -- ^ 'kdsscfcDocumentDataFieldName'
  -> KendraDataSourceSalesforceChatterFeedConfiguration
kendraDataSourceSalesforceChatterFeedConfiguration documentDataFieldNamearg =
  KendraDataSourceSalesforceChatterFeedConfiguration
  { _kendraDataSourceSalesforceChatterFeedConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceSalesforceChatterFeedConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSalesforceChatterFeedConfigurationFieldMappings = Nothing
  , _kendraDataSourceSalesforceChatterFeedConfigurationIncludeFilterTypes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-documentdatafieldname
kdsscfcDocumentDataFieldName :: Lens' KendraDataSourceSalesforceChatterFeedConfiguration (Val Text)
kdsscfcDocumentDataFieldName = lens _kendraDataSourceSalesforceChatterFeedConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceSalesforceChatterFeedConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-documenttitlefieldname
kdsscfcDocumentTitleFieldName :: Lens' KendraDataSourceSalesforceChatterFeedConfiguration (Maybe (Val Text))
kdsscfcDocumentTitleFieldName = lens _kendraDataSourceSalesforceChatterFeedConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSalesforceChatterFeedConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-fieldmappings
kdsscfcFieldMappings :: Lens' KendraDataSourceSalesforceChatterFeedConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsscfcFieldMappings = lens _kendraDataSourceSalesforceChatterFeedConfigurationFieldMappings (\s a -> s { _kendraDataSourceSalesforceChatterFeedConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcechatterfeedconfiguration.html#cfn-kendra-datasource-salesforcechatterfeedconfiguration-includefiltertypes
kdsscfcIncludeFilterTypes :: Lens' KendraDataSourceSalesforceChatterFeedConfiguration (Maybe KendraDataSourceSalesforceChatterFeedIncludeFilterTypes)
kdsscfcIncludeFilterTypes = lens _kendraDataSourceSalesforceChatterFeedConfigurationIncludeFilterTypes (\s a -> s { _kendraDataSourceSalesforceChatterFeedConfigurationIncludeFilterTypes = a })
