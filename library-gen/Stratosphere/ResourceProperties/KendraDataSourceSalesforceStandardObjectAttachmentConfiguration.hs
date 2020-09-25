{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectAttachmentConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for
-- KendraDataSourceSalesforceStandardObjectAttachmentConfiguration. See
-- 'kendraDataSourceSalesforceStandardObjectAttachmentConfiguration' for a
-- more convenient constructor.
data KendraDataSourceSalesforceStandardObjectAttachmentConfiguration =
  KendraDataSourceSalesforceStandardObjectAttachmentConfiguration
  { _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceStandardObjectAttachmentConfiguration where
  toJSON KendraDataSourceSalesforceStandardObjectAttachmentConfiguration{..} =
    object $
    catMaybes
    [ fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationDocumentTitleFieldName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationFieldMappings
    ]

-- | Constructor for
-- 'KendraDataSourceSalesforceStandardObjectAttachmentConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceStandardObjectAttachmentConfiguration
  :: KendraDataSourceSalesforceStandardObjectAttachmentConfiguration
kendraDataSourceSalesforceStandardObjectAttachmentConfiguration  =
  KendraDataSourceSalesforceStandardObjectAttachmentConfiguration
  { _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationFieldMappings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectattachmentconfiguration-documenttitlefieldname
kdsssoacDocumentTitleFieldName :: Lens' KendraDataSourceSalesforceStandardObjectAttachmentConfiguration (Maybe (Val Text))
kdsssoacDocumentTitleFieldName = lens _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectattachmentconfiguration-fieldmappings
kdsssoacFieldMappings :: Lens' KendraDataSourceSalesforceStandardObjectAttachmentConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsssoacFieldMappings = lens _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationFieldMappings (\s a -> s { _kendraDataSourceSalesforceStandardObjectAttachmentConfigurationFieldMappings = a })
