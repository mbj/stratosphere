{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitems.html

module Stratosphere.ResourceProperties.KendraIndexValueImportanceItems where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraIndexValueImportanceItem

-- | Full data type definition for KendraIndexValueImportanceItems. See
-- 'kendraIndexValueImportanceItems' for a more convenient constructor.
data KendraIndexValueImportanceItems =
  KendraIndexValueImportanceItems
  { _kendraIndexValueImportanceItemsValueImportanceItems :: Maybe [KendraIndexValueImportanceItem]
  } deriving (Show, Eq)

instance ToJSON KendraIndexValueImportanceItems where
  toJSON KendraIndexValueImportanceItems{..} =
    object $
    catMaybes
    [ fmap (("ValueImportanceItems",) . toJSON) _kendraIndexValueImportanceItemsValueImportanceItems
    ]

-- | Constructor for 'KendraIndexValueImportanceItems' containing required
-- fields as arguments.
kendraIndexValueImportanceItems
  :: KendraIndexValueImportanceItems
kendraIndexValueImportanceItems  =
  KendraIndexValueImportanceItems
  { _kendraIndexValueImportanceItemsValueImportanceItems = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitems.html#cfn-kendra-index-valueimportanceitems-valueimportanceitems
kiviiValueImportanceItems :: Lens' KendraIndexValueImportanceItems (Maybe [KendraIndexValueImportanceItem])
kiviiValueImportanceItems = lens _kendraIndexValueImportanceItemsValueImportanceItems (\s a -> s { _kendraIndexValueImportanceItemsValueImportanceItems = a })
