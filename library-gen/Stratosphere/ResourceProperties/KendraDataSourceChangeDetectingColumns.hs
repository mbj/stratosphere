{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-changedetectingcolumns.html

module Stratosphere.ResourceProperties.KendraDataSourceChangeDetectingColumns where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceChangeDetectingColumns. See
-- 'kendraDataSourceChangeDetectingColumns' for a more convenient
-- constructor.
data KendraDataSourceChangeDetectingColumns =
  KendraDataSourceChangeDetectingColumns
  { _kendraDataSourceChangeDetectingColumnsChangeDetectingColumns :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceChangeDetectingColumns where
  toJSON KendraDataSourceChangeDetectingColumns{..} =
    object $
    catMaybes
    [ fmap (("ChangeDetectingColumns",) . toJSON) _kendraDataSourceChangeDetectingColumnsChangeDetectingColumns
    ]

-- | Constructor for 'KendraDataSourceChangeDetectingColumns' containing
-- required fields as arguments.
kendraDataSourceChangeDetectingColumns
  :: KendraDataSourceChangeDetectingColumns
kendraDataSourceChangeDetectingColumns  =
  KendraDataSourceChangeDetectingColumns
  { _kendraDataSourceChangeDetectingColumnsChangeDetectingColumns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-changedetectingcolumns.html#cfn-kendra-datasource-changedetectingcolumns-changedetectingcolumns
kdscdcChangeDetectingColumns :: Lens' KendraDataSourceChangeDetectingColumns (Maybe (ValList Text))
kdscdcChangeDetectingColumns = lens _kendraDataSourceChangeDetectingColumnsChangeDetectingColumns (\s a -> s { _kendraDataSourceChangeDetectingColumnsChangeDetectingColumns = a })
