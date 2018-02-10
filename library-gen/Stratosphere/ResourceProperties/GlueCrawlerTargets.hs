{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html

module Stratosphere.ResourceProperties.GlueCrawlerTargets where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueCrawlerJdbcTarget
import Stratosphere.ResourceProperties.GlueCrawlerS3Target

-- | Full data type definition for GlueCrawlerTargets. See
-- 'glueCrawlerTargets' for a more convenient constructor.
data GlueCrawlerTargets =
  GlueCrawlerTargets
  { _glueCrawlerTargetsJdbcTargets :: Maybe [GlueCrawlerJdbcTarget]
  , _glueCrawlerTargetsS3Targets :: Maybe [GlueCrawlerS3Target]
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerTargets where
  toJSON GlueCrawlerTargets{..} =
    object $
    catMaybes
    [ fmap (("JdbcTargets",) . toJSON) _glueCrawlerTargetsJdbcTargets
    , fmap (("S3Targets",) . toJSON) _glueCrawlerTargetsS3Targets
    ]

instance FromJSON GlueCrawlerTargets where
  parseJSON (Object obj) =
    GlueCrawlerTargets <$>
      (obj .:? "JdbcTargets") <*>
      (obj .:? "S3Targets")
  parseJSON _ = mempty

-- | Constructor for 'GlueCrawlerTargets' containing required fields as
-- arguments.
glueCrawlerTargets
  :: GlueCrawlerTargets
glueCrawlerTargets  =
  GlueCrawlerTargets
  { _glueCrawlerTargetsJdbcTargets = Nothing
  , _glueCrawlerTargetsS3Targets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets
gctJdbcTargets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerJdbcTarget])
gctJdbcTargets = lens _glueCrawlerTargetsJdbcTargets (\s a -> s { _glueCrawlerTargetsJdbcTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets
gctS3Targets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerS3Target])
gctS3Targets = lens _glueCrawlerTargetsS3Targets (\s a -> s { _glueCrawlerTargetsS3Targets = a })
