{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html

module Stratosphere.Resources.KinesisAnalyticsV2ApplicationReferenceDataSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSource. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSource' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSource =
  KinesisAnalyticsV2ApplicationReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceApplicationName :: Val Text
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource :: KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSource where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationName",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceApplicationName
    , (Just . ("ReferenceDataSource",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSource where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSource <$>
      (obj .: "ApplicationName") <*>
      (obj .: "ReferenceDataSource")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSource
  :: Val Text -- ^ 'kavardsApplicationName'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource -- ^ 'kavardsReferenceDataSource'
  -> KinesisAnalyticsV2ApplicationReferenceDataSource
kinesisAnalyticsV2ApplicationReferenceDataSource applicationNamearg referenceDataSourcearg =
  KinesisAnalyticsV2ApplicationReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceApplicationName = applicationNamearg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource = referenceDataSourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-applicationname
kavardsApplicationName :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSource (Val Text)
kavardsApplicationName = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceApplicationName (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource
kavardsReferenceDataSource :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSource KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
kavardsReferenceDataSource = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource = a })
