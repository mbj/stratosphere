{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmappinglist.html

module Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMapping

-- | Full data type definition for
-- KendraDataSourceDataSourceToIndexFieldMappingList. See
-- 'kendraDataSourceDataSourceToIndexFieldMappingList' for a more convenient
-- constructor.
data KendraDataSourceDataSourceToIndexFieldMappingList =
  KendraDataSourceDataSourceToIndexFieldMappingList
  { _kendraDataSourceDataSourceToIndexFieldMappingListDataSourceToIndexFieldMappingList :: Maybe [KendraDataSourceDataSourceToIndexFieldMapping]
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDataSourceToIndexFieldMappingList where
  toJSON KendraDataSourceDataSourceToIndexFieldMappingList{..} =
    object $
    catMaybes
    [ fmap (("DataSourceToIndexFieldMappingList",) . toJSON) _kendraDataSourceDataSourceToIndexFieldMappingListDataSourceToIndexFieldMappingList
    ]

-- | Constructor for 'KendraDataSourceDataSourceToIndexFieldMappingList'
-- containing required fields as arguments.
kendraDataSourceDataSourceToIndexFieldMappingList
  :: KendraDataSourceDataSourceToIndexFieldMappingList
kendraDataSourceDataSourceToIndexFieldMappingList  =
  KendraDataSourceDataSourceToIndexFieldMappingList
  { _kendraDataSourceDataSourceToIndexFieldMappingListDataSourceToIndexFieldMappingList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourcetoindexfieldmappinglist.html#cfn-kendra-datasource-datasourcetoindexfieldmappinglist-datasourcetoindexfieldmappinglist
kdsdstifmlDataSourceToIndexFieldMappingList :: Lens' KendraDataSourceDataSourceToIndexFieldMappingList (Maybe [KendraDataSourceDataSourceToIndexFieldMapping])
kdsdstifmlDataSourceToIndexFieldMappingList = lens _kendraDataSourceDataSourceToIndexFieldMappingListDataSourceToIndexFieldMappingList (\s a -> s { _kendraDataSourceDataSourceToIndexFieldMappingListDataSourceToIndexFieldMappingList = a })
