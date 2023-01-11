
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputParallelism where

import Prelude
import Stratosphere.ResourceImports


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
    [ fmap (("Count",) . toJSON) _kinesisAnalyticsApplicationInputParallelismCount
    ]

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
