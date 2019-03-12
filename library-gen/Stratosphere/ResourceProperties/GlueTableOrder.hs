{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html

module Stratosphere.ResourceProperties.GlueTableOrder where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueTableOrder. See 'glueTableOrder' for a
-- more convenient constructor.
data GlueTableOrder =
  GlueTableOrder
  { _glueTableOrderColumn :: Val Text
  , _glueTableOrderSortOrder :: Val Integer
  } deriving (Show, Eq)

instance ToJSON GlueTableOrder where
  toJSON GlueTableOrder{..} =
    object $
    catMaybes
    [ (Just . ("Column",) . toJSON) _glueTableOrderColumn
    , (Just . ("SortOrder",) . toJSON) _glueTableOrderSortOrder
    ]

-- | Constructor for 'GlueTableOrder' containing required fields as arguments.
glueTableOrder
  :: Val Text -- ^ 'gtoColumn'
  -> Val Integer -- ^ 'gtoSortOrder'
  -> GlueTableOrder
glueTableOrder columnarg sortOrderarg =
  GlueTableOrder
  { _glueTableOrderColumn = columnarg
  , _glueTableOrderSortOrder = sortOrderarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-column
gtoColumn :: Lens' GlueTableOrder (Val Text)
gtoColumn = lens _glueTableOrderColumn (\s a -> s { _glueTableOrderColumn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-sortorder
gtoSortOrder :: Lens' GlueTableOrder (Val Integer)
gtoSortOrder = lens _glueTableOrderSortOrder (\s a -> s { _glueTableOrderSortOrder = a })
