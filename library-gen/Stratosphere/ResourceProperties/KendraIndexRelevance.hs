{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html

module Stratosphere.ResourceProperties.KendraIndexRelevance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraIndexValueImportanceItems

-- | Full data type definition for KendraIndexRelevance. See
-- 'kendraIndexRelevance' for a more convenient constructor.
data KendraIndexRelevance =
  KendraIndexRelevance
  { _kendraIndexRelevanceDuration :: Maybe (Val Text)
  , _kendraIndexRelevanceFreshness :: Maybe (Val Bool)
  , _kendraIndexRelevanceImportance :: Maybe (Val Integer)
  , _kendraIndexRelevanceRankOrder :: Maybe (Val Text)
  , _kendraIndexRelevanceValueImportanceItems :: Maybe KendraIndexValueImportanceItems
  } deriving (Show, Eq)

instance ToJSON KendraIndexRelevance where
  toJSON KendraIndexRelevance{..} =
    object $
    catMaybes
    [ fmap (("Duration",) . toJSON) _kendraIndexRelevanceDuration
    , fmap (("Freshness",) . toJSON) _kendraIndexRelevanceFreshness
    , fmap (("Importance",) . toJSON) _kendraIndexRelevanceImportance
    , fmap (("RankOrder",) . toJSON) _kendraIndexRelevanceRankOrder
    , fmap (("ValueImportanceItems",) . toJSON) _kendraIndexRelevanceValueImportanceItems
    ]

-- | Constructor for 'KendraIndexRelevance' containing required fields as
-- arguments.
kendraIndexRelevance
  :: KendraIndexRelevance
kendraIndexRelevance  =
  KendraIndexRelevance
  { _kendraIndexRelevanceDuration = Nothing
  , _kendraIndexRelevanceFreshness = Nothing
  , _kendraIndexRelevanceImportance = Nothing
  , _kendraIndexRelevanceRankOrder = Nothing
  , _kendraIndexRelevanceValueImportanceItems = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html#cfn-kendra-index-relevance-duration
kirDuration :: Lens' KendraIndexRelevance (Maybe (Val Text))
kirDuration = lens _kendraIndexRelevanceDuration (\s a -> s { _kendraIndexRelevanceDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html#cfn-kendra-index-relevance-freshness
kirFreshness :: Lens' KendraIndexRelevance (Maybe (Val Bool))
kirFreshness = lens _kendraIndexRelevanceFreshness (\s a -> s { _kendraIndexRelevanceFreshness = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html#cfn-kendra-index-relevance-importance
kirImportance :: Lens' KendraIndexRelevance (Maybe (Val Integer))
kirImportance = lens _kendraIndexRelevanceImportance (\s a -> s { _kendraIndexRelevanceImportance = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html#cfn-kendra-index-relevance-rankorder
kirRankOrder :: Lens' KendraIndexRelevance (Maybe (Val Text))
kirRankOrder = lens _kendraIndexRelevanceRankOrder (\s a -> s { _kendraIndexRelevanceRankOrder = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-relevance.html#cfn-kendra-index-relevance-valueimportanceitems
kirValueImportanceItems :: Lens' KendraIndexRelevance (Maybe KendraIndexValueImportanceItems)
kirValueImportanceItems = lens _kendraIndexRelevanceValueImportanceItems (\s a -> s { _kendraIndexRelevanceValueImportanceItems = a })
