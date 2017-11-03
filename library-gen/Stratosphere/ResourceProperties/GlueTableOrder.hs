{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html

module Stratosphere.ResourceProperties.GlueTableOrder where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    , (Just . ("SortOrder",) . toJSON . fmap Integer') _glueTableOrderSortOrder
    ]

instance FromJSON GlueTableOrder where
  parseJSON (Object obj) =
    GlueTableOrder <$>
      (obj .: "Column") <*>
      fmap (fmap unInteger') (obj .: "SortOrder")
  parseJSON _ = mempty

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
