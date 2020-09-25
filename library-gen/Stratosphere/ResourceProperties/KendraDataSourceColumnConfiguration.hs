{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceColumnConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceChangeDetectingColumns
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList

-- | Full data type definition for KendraDataSourceColumnConfiguration. See
-- 'kendraDataSourceColumnConfiguration' for a more convenient constructor.
data KendraDataSourceColumnConfiguration =
  KendraDataSourceColumnConfiguration
  { _kendraDataSourceColumnConfigurationChangeDetectingColumns :: KendraDataSourceChangeDetectingColumns
  , _kendraDataSourceColumnConfigurationDocumentDataColumnName :: Val Text
  , _kendraDataSourceColumnConfigurationDocumentIdColumnName :: Val Text
  , _kendraDataSourceColumnConfigurationDocumentTitleColumnName :: Maybe (Val Text)
  , _kendraDataSourceColumnConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceColumnConfiguration where
  toJSON KendraDataSourceColumnConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ChangeDetectingColumns",) . toJSON) _kendraDataSourceColumnConfigurationChangeDetectingColumns
    , (Just . ("DocumentDataColumnName",) . toJSON) _kendraDataSourceColumnConfigurationDocumentDataColumnName
    , (Just . ("DocumentIdColumnName",) . toJSON) _kendraDataSourceColumnConfigurationDocumentIdColumnName
    , fmap (("DocumentTitleColumnName",) . toJSON) _kendraDataSourceColumnConfigurationDocumentTitleColumnName
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceColumnConfigurationFieldMappings
    ]

-- | Constructor for 'KendraDataSourceColumnConfiguration' containing required
-- fields as arguments.
kendraDataSourceColumnConfiguration
  :: KendraDataSourceChangeDetectingColumns -- ^ 'kdsccChangeDetectingColumns'
  -> Val Text -- ^ 'kdsccDocumentDataColumnName'
  -> Val Text -- ^ 'kdsccDocumentIdColumnName'
  -> KendraDataSourceColumnConfiguration
kendraDataSourceColumnConfiguration changeDetectingColumnsarg documentDataColumnNamearg documentIdColumnNamearg =
  KendraDataSourceColumnConfiguration
  { _kendraDataSourceColumnConfigurationChangeDetectingColumns = changeDetectingColumnsarg
  , _kendraDataSourceColumnConfigurationDocumentDataColumnName = documentDataColumnNamearg
  , _kendraDataSourceColumnConfigurationDocumentIdColumnName = documentIdColumnNamearg
  , _kendraDataSourceColumnConfigurationDocumentTitleColumnName = Nothing
  , _kendraDataSourceColumnConfigurationFieldMappings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html#cfn-kendra-datasource-columnconfiguration-changedetectingcolumns
kdsccChangeDetectingColumns :: Lens' KendraDataSourceColumnConfiguration KendraDataSourceChangeDetectingColumns
kdsccChangeDetectingColumns = lens _kendraDataSourceColumnConfigurationChangeDetectingColumns (\s a -> s { _kendraDataSourceColumnConfigurationChangeDetectingColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html#cfn-kendra-datasource-columnconfiguration-documentdatacolumnname
kdsccDocumentDataColumnName :: Lens' KendraDataSourceColumnConfiguration (Val Text)
kdsccDocumentDataColumnName = lens _kendraDataSourceColumnConfigurationDocumentDataColumnName (\s a -> s { _kendraDataSourceColumnConfigurationDocumentDataColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html#cfn-kendra-datasource-columnconfiguration-documentidcolumnname
kdsccDocumentIdColumnName :: Lens' KendraDataSourceColumnConfiguration (Val Text)
kdsccDocumentIdColumnName = lens _kendraDataSourceColumnConfigurationDocumentIdColumnName (\s a -> s { _kendraDataSourceColumnConfigurationDocumentIdColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html#cfn-kendra-datasource-columnconfiguration-documenttitlecolumnname
kdsccDocumentTitleColumnName :: Lens' KendraDataSourceColumnConfiguration (Maybe (Val Text))
kdsccDocumentTitleColumnName = lens _kendraDataSourceColumnConfigurationDocumentTitleColumnName (\s a -> s { _kendraDataSourceColumnConfigurationDocumentTitleColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-columnconfiguration.html#cfn-kendra-datasource-columnconfiguration-fieldmappings
kdsccFieldMappings :: Lens' KendraDataSourceColumnConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsccFieldMappings = lens _kendraDataSourceColumnConfigurationFieldMappings (\s a -> s { _kendraDataSourceColumnConfigurationFieldMappings = a })
