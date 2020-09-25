{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html

module Stratosphere.ResourceProperties.KendraIndexValueImportanceItem where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraIndexValueImportanceItem. See
-- 'kendraIndexValueImportanceItem' for a more convenient constructor.
data KendraIndexValueImportanceItem =
  KendraIndexValueImportanceItem
  { _kendraIndexValueImportanceItemKey :: Maybe (Val Text)
  , _kendraIndexValueImportanceItemValue :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KendraIndexValueImportanceItem where
  toJSON KendraIndexValueImportanceItem{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _kendraIndexValueImportanceItemKey
    , fmap (("Value",) . toJSON) _kendraIndexValueImportanceItemValue
    ]

-- | Constructor for 'KendraIndexValueImportanceItem' containing required
-- fields as arguments.
kendraIndexValueImportanceItem
  :: KendraIndexValueImportanceItem
kendraIndexValueImportanceItem  =
  KendraIndexValueImportanceItem
  { _kendraIndexValueImportanceItemKey = Nothing
  , _kendraIndexValueImportanceItemValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html#cfn-kendra-index-valueimportanceitem-key
kiviiKey :: Lens' KendraIndexValueImportanceItem (Maybe (Val Text))
kiviiKey = lens _kendraIndexValueImportanceItemKey (\s a -> s { _kendraIndexValueImportanceItemKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html#cfn-kendra-index-valueimportanceitem-value
kiviiValue :: Lens' KendraIndexValueImportanceItem (Maybe (Val Integer))
kiviiValue = lens _kendraIndexValueImportanceItemValue (\s a -> s { _kendraIndexValueImportanceItemValue = a })
