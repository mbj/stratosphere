{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmapping.html

module Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceDataSourceToIndexFieldMapping. See
-- 'kendraDataSourceDataSourceToIndexFieldMapping' for a more convenient
-- constructor.
data KendraDataSourceDataSourceToIndexFieldMapping =
  KendraDataSourceDataSourceToIndexFieldMapping
  { _kendraDataSourceDataSourceToIndexFieldMappingDataSourceFieldName :: Val Text
  , _kendraDataSourceDataSourceToIndexFieldMappingDateFieldFormat :: Maybe (Val Text)
  , _kendraDataSourceDataSourceToIndexFieldMappingIndexFieldName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDataSourceToIndexFieldMapping where
  toJSON KendraDataSourceDataSourceToIndexFieldMapping{..} =
    object $
    catMaybes
    [ (Just . ("DataSourceFieldName",) . toJSON) _kendraDataSourceDataSourceToIndexFieldMappingDataSourceFieldName
    , fmap (("DateFieldFormat",) . toJSON) _kendraDataSourceDataSourceToIndexFieldMappingDateFieldFormat
    , (Just . ("IndexFieldName",) . toJSON) _kendraDataSourceDataSourceToIndexFieldMappingIndexFieldName
    ]

-- | Constructor for 'KendraDataSourceDataSourceToIndexFieldMapping'
-- containing required fields as arguments.
kendraDataSourceDataSourceToIndexFieldMapping
  :: Val Text -- ^ 'kdsdstifmDataSourceFieldName'
  -> Val Text -- ^ 'kdsdstifmIndexFieldName'
  -> KendraDataSourceDataSourceToIndexFieldMapping
kendraDataSourceDataSourceToIndexFieldMapping dataSourceFieldNamearg indexFieldNamearg =
  KendraDataSourceDataSourceToIndexFieldMapping
  { _kendraDataSourceDataSourceToIndexFieldMappingDataSourceFieldName = dataSourceFieldNamearg
  , _kendraDataSourceDataSourceToIndexFieldMappingDateFieldFormat = Nothing
  , _kendraDataSourceDataSourceToIndexFieldMappingIndexFieldName = indexFieldNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmapping.html#cfn-kendra-datasource-datasourcetoindexfieldmapping-datasourcefieldname
kdsdstifmDataSourceFieldName :: Lens' KendraDataSourceDataSourceToIndexFieldMapping (Val Text)
kdsdstifmDataSourceFieldName = lens _kendraDataSourceDataSourceToIndexFieldMappingDataSourceFieldName (\s a -> s { _kendraDataSourceDataSourceToIndexFieldMappingDataSourceFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmapping.html#cfn-kendra-datasource-datasourcetoindexfieldmapping-datefieldformat
kdsdstifmDateFieldFormat :: Lens' KendraDataSourceDataSourceToIndexFieldMapping (Maybe (Val Text))
kdsdstifmDateFieldFormat = lens _kendraDataSourceDataSourceToIndexFieldMappingDateFieldFormat (\s a -> s { _kendraDataSourceDataSourceToIndexFieldMappingDateFieldFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmapping.html#cfn-kendra-datasource-datasourcetoindexfieldmapping-indexfieldname
kdsdstifmIndexFieldName :: Lens' KendraDataSourceDataSourceToIndexFieldMapping (Val Text)
kdsdstifmIndexFieldName = lens _kendraDataSourceDataSourceToIndexFieldMappingIndexFieldName (\s a -> s { _kendraDataSourceDataSourceToIndexFieldMappingIndexFieldName = a })
