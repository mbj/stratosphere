{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-environmentproperties.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationEnvironmentProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationPropertyGroup

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationEnvironmentProperties. See
-- 'kinesisAnalyticsV2ApplicationEnvironmentProperties' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationEnvironmentProperties =
  KinesisAnalyticsV2ApplicationEnvironmentProperties
  { _kinesisAnalyticsV2ApplicationEnvironmentPropertiesPropertyGroups :: Maybe [KinesisAnalyticsV2ApplicationPropertyGroup]
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationEnvironmentProperties where
  toJSON KinesisAnalyticsV2ApplicationEnvironmentProperties{..} =
    object $
    catMaybes
    [ fmap (("PropertyGroups",) . toJSON) _kinesisAnalyticsV2ApplicationEnvironmentPropertiesPropertyGroups
    ]

instance FromJSON KinesisAnalyticsV2ApplicationEnvironmentProperties where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationEnvironmentProperties <$>
      (obj .:? "PropertyGroups")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationEnvironmentProperties'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationEnvironmentProperties
  :: KinesisAnalyticsV2ApplicationEnvironmentProperties
kinesisAnalyticsV2ApplicationEnvironmentProperties  =
  KinesisAnalyticsV2ApplicationEnvironmentProperties
  { _kinesisAnalyticsV2ApplicationEnvironmentPropertiesPropertyGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-environmentproperties.html#cfn-kinesisanalyticsv2-application-environmentproperties-propertygroups
kavaepPropertyGroups :: Lens' KinesisAnalyticsV2ApplicationEnvironmentProperties (Maybe [KinesisAnalyticsV2ApplicationPropertyGroup])
kavaepPropertyGroups = lens _kinesisAnalyticsV2ApplicationEnvironmentPropertiesPropertyGroups (\s a -> s { _kinesisAnalyticsV2ApplicationEnvironmentPropertiesPropertyGroups = a })
