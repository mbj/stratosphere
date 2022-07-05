{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html

module Stratosphere.Resources.KinesisAnalyticsApplicationReferenceDataSource where

import Stratosphere.ResourceImports
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

instance ToResourceProperties KinesisAnalyticsApplicationReferenceDataSource where
  toResourceProperties KinesisAnalyticsApplicationReferenceDataSource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationName",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceApplicationName
        , (Just . ("ReferenceDataSource",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
        ]
    }

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
