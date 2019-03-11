{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationKinesisFirehoseInput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationKinesisFirehoseInput. See
-- 'kinesisAnalyticsApplicationKinesisFirehoseInput' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationKinesisFirehoseInput =
  KinesisAnalyticsApplicationKinesisFirehoseInput
  { _kinesisAnalyticsApplicationKinesisFirehoseInputResourceARN :: Val Text
  , _kinesisAnalyticsApplicationKinesisFirehoseInputRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationKinesisFirehoseInput where
  toJSON KinesisAnalyticsApplicationKinesisFirehoseInput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationKinesisFirehoseInputResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationKinesisFirehoseInputRoleARN
    ]

-- | Constructor for 'KinesisAnalyticsApplicationKinesisFirehoseInput'
-- containing required fields as arguments.
kinesisAnalyticsApplicationKinesisFirehoseInput
  :: Val Text -- ^ 'kaakfiResourceARN'
  -> Val Text -- ^ 'kaakfiRoleARN'
  -> KinesisAnalyticsApplicationKinesisFirehoseInput
kinesisAnalyticsApplicationKinesisFirehoseInput resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationKinesisFirehoseInput
  { _kinesisAnalyticsApplicationKinesisFirehoseInputResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationKinesisFirehoseInputRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-resourcearn
kaakfiResourceARN :: Lens' KinesisAnalyticsApplicationKinesisFirehoseInput (Val Text)
kaakfiResourceARN = lens _kinesisAnalyticsApplicationKinesisFirehoseInputResourceARN (\s a -> s { _kinesisAnalyticsApplicationKinesisFirehoseInputResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-rolearn
kaakfiRoleARN :: Lens' KinesisAnalyticsApplicationKinesisFirehoseInput (Val Text)
kaakfiRoleARN = lens _kinesisAnalyticsApplicationKinesisFirehoseInputRoleARN (\s a -> s { _kinesisAnalyticsApplicationKinesisFirehoseInputRoleARN = a })
