
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputparallelism.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputParallelism where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationInputParallelism. See
-- 'kinesisAnalyticsV2ApplicationInputParallelism' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationInputParallelism =
  KinesisAnalyticsV2ApplicationInputParallelism
  { _kinesisAnalyticsV2ApplicationInputParallelismCount :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationInputParallelism where
  toJSON KinesisAnalyticsV2ApplicationInputParallelism{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _kinesisAnalyticsV2ApplicationInputParallelismCount
    ]

-- | Constructor for 'KinesisAnalyticsV2ApplicationInputParallelism'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationInputParallelism
  :: KinesisAnalyticsV2ApplicationInputParallelism
kinesisAnalyticsV2ApplicationInputParallelism  =
  KinesisAnalyticsV2ApplicationInputParallelism
  { _kinesisAnalyticsV2ApplicationInputParallelismCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputparallelism.html#cfn-kinesisanalyticsv2-application-inputparallelism-count
kavaipCount :: Lens' KinesisAnalyticsV2ApplicationInputParallelism (Maybe (Val Integer))
kavaipCount = lens _kinesisAnalyticsV2ApplicationInputParallelismCount (\s a -> s { _kinesisAnalyticsV2ApplicationInputParallelismCount = a })
