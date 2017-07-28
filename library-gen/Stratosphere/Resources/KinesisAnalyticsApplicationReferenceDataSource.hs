{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html

module Stratosphere.Resources.KinesisAnalyticsApplicationReferenceDataSource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource

-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSource. See
-- 'kinesisAnalyticsApplicationReferenceDataSource' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationReferenceDataSource =
  KinesisAnalyticsApplicationReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceApplicationName :: Val Text
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource :: KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSource where
  toJSON KinesisAnalyticsApplicationReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceApplicationName
    , (Just . ("ReferenceDataSource",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
    ]

instance FromJSON KinesisAnalyticsApplicationReferenceDataSource where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationReferenceDataSource <$>
      (obj .: "ApplicationName") <*>
      (obj .: "ReferenceDataSource")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSource
  :: Val Text -- ^ 'kaardsApplicationName'
  -> KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource -- ^ 'kaardsReferenceDataSource'
  -> KinesisAnalyticsApplicationReferenceDataSource
kinesisAnalyticsApplicationReferenceDataSource applicationNamearg referenceDataSourcearg =
  KinesisAnalyticsApplicationReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceApplicationName = applicationNamearg
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource = referenceDataSourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-applicationname
kaardsApplicationName :: Lens' KinesisAnalyticsApplicationReferenceDataSource (Val Text)
kaardsApplicationName = lens _kinesisAnalyticsApplicationReferenceDataSourceApplicationName (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource
kaardsReferenceDataSource :: Lens' KinesisAnalyticsApplicationReferenceDataSource KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
kaardsReferenceDataSource = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource = a })
