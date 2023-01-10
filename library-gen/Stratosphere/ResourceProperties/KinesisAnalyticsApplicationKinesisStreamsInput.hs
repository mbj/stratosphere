
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationKinesisStreamsInput where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsApplicationKinesisStreamsInput. See
-- 'kinesisAnalyticsApplicationKinesisStreamsInput' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationKinesisStreamsInput =
  KinesisAnalyticsApplicationKinesisStreamsInput
  { _kinesisAnalyticsApplicationKinesisStreamsInputResourceARN :: Val Text
  , _kinesisAnalyticsApplicationKinesisStreamsInputRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationKinesisStreamsInput where
  toJSON KinesisAnalyticsApplicationKinesisStreamsInput{..} =
    object $
    catMaybes
    [ (Just . ("ResourceARN",) . toJSON) _kinesisAnalyticsApplicationKinesisStreamsInputResourceARN
    , (Just . ("RoleARN",) . toJSON) _kinesisAnalyticsApplicationKinesisStreamsInputRoleARN
    ]

-- | Constructor for 'KinesisAnalyticsApplicationKinesisStreamsInput'
-- containing required fields as arguments.
kinesisAnalyticsApplicationKinesisStreamsInput
  :: Val Text -- ^ 'kaaksiResourceARN'
  -> Val Text -- ^ 'kaaksiRoleARN'
  -> KinesisAnalyticsApplicationKinesisStreamsInput
kinesisAnalyticsApplicationKinesisStreamsInput resourceARNarg roleARNarg =
  KinesisAnalyticsApplicationKinesisStreamsInput
  { _kinesisAnalyticsApplicationKinesisStreamsInputResourceARN = resourceARNarg
  , _kinesisAnalyticsApplicationKinesisStreamsInputRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-resourcearn
kaaksiResourceARN :: Lens' KinesisAnalyticsApplicationKinesisStreamsInput (Val Text)
kaaksiResourceARN = lens _kinesisAnalyticsApplicationKinesisStreamsInputResourceARN (\s a -> s { _kinesisAnalyticsApplicationKinesisStreamsInputResourceARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-rolearn
kaaksiRoleARN :: Lens' KinesisAnalyticsApplicationKinesisStreamsInput (Val Text)
kaaksiRoleARN = lens _kinesisAnalyticsApplicationKinesisStreamsInputRoleARN (\s a -> s { _kinesisAnalyticsApplicationKinesisStreamsInputRoleARN = a })
