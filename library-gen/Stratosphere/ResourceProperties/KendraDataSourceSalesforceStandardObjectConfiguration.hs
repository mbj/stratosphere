{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceSalesforceStandardObjectConfiguration. See
-- 'kendraDataSourceSalesforceStandardObjectConfiguration' for a more
-- convenient constructor.
data KendraDataSourceSalesforceStandardObjectConfiguration =
  KendraDataSourceSalesforceStandardObjectConfiguration
  { _kendraDataSourceSalesforceStandardObjectConfigurationDocumentDataFieldName :: Val Text
  , _kendraDataSourceSalesforceStandardObjectConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSalesforceStandardObjectConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceSalesforceStandardObjectConfigurationName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceStandardObjectConfiguration where
  toJSON KendraDataSourceSalesforceStandardObjectConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DocumentDataFieldName",) . toJSON) _kendraDataSourceSalesforceStandardObjectConfigurationDocumentDataFieldName
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSalesforceStandardObjectConfigurationDocumentTitleFieldName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSalesforceStandardObjectConfigurationFieldMappings
    , (Just . ("Name",) . toJSON) _kendraDataSourceSalesforceStandardObjectConfigurationName
    ]

-- | Constructor for 'KendraDataSourceSalesforceStandardObjectConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceStandardObjectConfiguration
  :: Val Text -- ^ 'kdsssocDocumentDataFieldName'
  -> Val Text -- ^ 'kdsssocName'
  -> KendraDataSourceSalesforceStandardObjectConfiguration
kendraDataSourceSalesforceStandardObjectConfiguration documentDataFieldNamearg namearg =
  KendraDataSourceSalesforceStandardObjectConfiguration
  { _kendraDataSourceSalesforceStandardObjectConfigurationDocumentDataFieldName = documentDataFieldNamearg
  , _kendraDataSourceSalesforceStandardObjectConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSalesforceStandardObjectConfigurationFieldMappings = Nothing
  , _kendraDataSourceSalesforceStandardObjectConfigurationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectconfiguration-documentdatafieldname
kdsssocDocumentDataFieldName :: Lens' KendraDataSourceSalesforceStandardObjectConfiguration (Val Text)
kdsssocDocumentDataFieldName = lens _kendraDataSourceSalesforceStandardObjectConfigurationDocumentDataFieldName (\s a -> s { _kendraDataSourceSalesforceStandardObjectConfigurationDocumentDataFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectconfiguration-documenttitlefieldname
kdsssocDocumentTitleFieldName :: Lens' KendraDataSourceSalesforceStandardObjectConfiguration (Maybe (Val Text))
kdsssocDocumentTitleFieldName = lens _kendraDataSourceSalesforceStandardObjectConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSalesforceStandardObjectConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectconfiguration-fieldmappings
kdsssocFieldMappings :: Lens' KendraDataSourceSalesforceStandardObjectConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsssocFieldMappings = lens _kendraDataSourceSalesforceStandardObjectConfigurationFieldMappings (\s a -> s { _kendraDataSourceSalesforceStandardObjectConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectconfiguration-name
kdsssocName :: Lens' KendraDataSourceSalesforceStandardObjectConfiguration (Val Text)
kdsssocName = lens _kendraDataSourceSalesforceStandardObjectConfigurationName (\s a -> s { _kendraDataSourceSalesforceStandardObjectConfigurationName = a })
