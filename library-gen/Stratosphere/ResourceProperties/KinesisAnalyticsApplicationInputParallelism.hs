{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputParallelism where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- KinesisAnalyticsApplicationInputParallelism. See
-- 'kinesisAnalyticsApplicationInputParallelism' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationInputParallelism =
  KinesisAnalyticsApplicationInputParallelism
  { _kinesisAnalyticsApplicationInputParallelismCount :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationInputParallelism where
  toJSON KinesisAnalyticsApplicationInputParallelism{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON . fmap Integer') _kinesisAnalyticsApplicationInputParallelismCount
    ]

instance FromJSON KinesisAnalyticsApplicationInputParallelism where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationInputParallelism <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Count")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationInputParallelism' containing
-- required fields as arguments.
kinesisAnalyticsApplicationInputParallelism
  :: KinesisAnalyticsApplicationInputParallelism
kinesisAnalyticsApplicationInputParallelism  =
  KinesisAnalyticsApplicationInputParallelism
  { _kinesisAnalyticsApplicationInputParallelismCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html#cfn-kinesisanalytics-application-inputparallelism-count
kaaipCount :: Lens' KinesisAnalyticsApplicationInputParallelism (Maybe (Val Integer))
kaaipCount = lens _kinesisAnalyticsApplicationInputParallelismCount (\s a -> s { _kinesisAnalyticsApplicationInputParallelismCount = a })
