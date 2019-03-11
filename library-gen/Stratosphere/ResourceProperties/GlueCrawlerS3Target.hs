{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html

module Stratosphere.ResourceProperties.GlueCrawlerS3Target where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerS3Target. See
-- 'glueCrawlerS3Target' for a more convenient constructor.
data GlueCrawlerS3Target =
  GlueCrawlerS3Target
  { _glueCrawlerS3TargetExclusions :: Maybe (ValList Text)
  , _glueCrawlerS3TargetPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerS3Target where
  toJSON GlueCrawlerS3Target{..} =
    object $
    catMaybes
    [ fmap (("Exclusions",) . toJSON) _glueCrawlerS3TargetExclusions
    , fmap (("Path",) . toJSON) _glueCrawlerS3TargetPath
    ]

-- | Constructor for 'GlueCrawlerS3Target' containing required fields as
-- arguments.
glueCrawlerS3Target
  :: GlueCrawlerS3Target
glueCrawlerS3Target  =
  GlueCrawlerS3Target
  { _glueCrawlerS3TargetExclusions = Nothing
  , _glueCrawlerS3TargetPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-exclusions
gcstExclusions :: Lens' GlueCrawlerS3Target (Maybe (ValList Text))
gcstExclusions = lens _glueCrawlerS3TargetExclusions (\s a -> s { _glueCrawlerS3TargetExclusions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-path
gcstPath :: Lens' GlueCrawlerS3Target (Maybe (Val Text))
gcstPath = lens _glueCrawlerS3TargetPath (\s a -> s { _glueCrawlerS3TargetPath = a })
