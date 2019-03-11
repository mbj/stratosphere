{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html

module Stratosphere.ResourceProperties.GluePartitionOrder where

import Stratosphere.ResourceImports


-- | Full data type definition for GluePartitionOrder. See
-- 'gluePartitionOrder' for a more convenient constructor.
data GluePartitionOrder =
  GluePartitionOrder
  { _gluePartitionOrderColumn :: Val Text
  , _gluePartitionOrderSortOrder :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GluePartitionOrder where
  toJSON GluePartitionOrder{..} =
    object $
    catMaybes
    [ (Just . ("Column",) . toJSON) _gluePartitionOrderColumn
    , fmap (("SortOrder",) . toJSON . fmap Integer') _gluePartitionOrderSortOrder
    ]

-- | Constructor for 'GluePartitionOrder' containing required fields as
-- arguments.
gluePartitionOrder
  :: Val Text -- ^ 'gpoColumn'
  -> GluePartitionOrder
gluePartitionOrder columnarg =
  GluePartitionOrder
  { _gluePartitionOrderColumn = columnarg
  , _gluePartitionOrderSortOrder = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html#cfn-glue-partition-order-column
gpoColumn :: Lens' GluePartitionOrder (Val Text)
gpoColumn = lens _gluePartitionOrderColumn (\s a -> s { _gluePartitionOrderColumn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html#cfn-glue-partition-order-sortorder
gpoSortOrder :: Lens' GluePartitionOrder (Maybe (Val Integer))
gpoSortOrder = lens _gluePartitionOrderSortOrder (\s a -> s { _gluePartitionOrderSortOrder = a })
