{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html

module Stratosphere.ResourceProperties.GlueCrawlerTargets where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueCrawlerCatalogTarget
import Stratosphere.ResourceProperties.GlueCrawlerDynamoDBTarget
import Stratosphere.ResourceProperties.GlueCrawlerJdbcTarget
import Stratosphere.ResourceProperties.GlueCrawlerS3Target

-- | Full data type definition for GlueCrawlerTargets. See
-- 'glueCrawlerTargets' for a more convenient constructor.
data GlueCrawlerTargets =
  GlueCrawlerTargets
  { _glueCrawlerTargetsCatalogTargets :: Maybe [GlueCrawlerCatalogTarget]
  , _glueCrawlerTargetsDynamoDBTargets :: Maybe [GlueCrawlerDynamoDBTarget]
  , _glueCrawlerTargetsJdbcTargets :: Maybe [GlueCrawlerJdbcTarget]
  , _glueCrawlerTargetsS3Targets :: Maybe [GlueCrawlerS3Target]
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerTargets where
  toJSON GlueCrawlerTargets{..} =
    object $
    catMaybes
    [ fmap (("CatalogTargets",) . toJSON) _glueCrawlerTargetsCatalogTargets
    , fmap (("DynamoDBTargets",) . toJSON) _glueCrawlerTargetsDynamoDBTargets
    , fmap (("JdbcTargets",) . toJSON) _glueCrawlerTargetsJdbcTargets
    , fmap (("S3Targets",) . toJSON) _glueCrawlerTargetsS3Targets
    ]

-- | Constructor for 'GlueCrawlerTargets' containing required fields as
-- arguments.
glueCrawlerTargets
  :: GlueCrawlerTargets
glueCrawlerTargets  =
  GlueCrawlerTargets
  { _glueCrawlerTargetsCatalogTargets = Nothing
  , _glueCrawlerTargetsDynamoDBTargets = Nothing
  , _glueCrawlerTargetsJdbcTargets = Nothing
  , _glueCrawlerTargetsS3Targets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-catalogtargets
gctCatalogTargets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerCatalogTarget])
gctCatalogTargets = lens _glueCrawlerTargetsCatalogTargets (\s a -> s { _glueCrawlerTargetsCatalogTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-dynamodbtargets
gctDynamoDBTargets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerDynamoDBTarget])
gctDynamoDBTargets = lens _glueCrawlerTargetsDynamoDBTargets (\s a -> s { _glueCrawlerTargetsDynamoDBTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets
gctJdbcTargets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerJdbcTarget])
gctJdbcTargets = lens _glueCrawlerTargetsJdbcTargets (\s a -> s { _glueCrawlerTargetsJdbcTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets
gctS3Targets :: Lens' GlueCrawlerTargets (Maybe [GlueCrawlerS3Target])
gctS3Targets = lens _glueCrawlerTargetsS3Targets (\s a -> s { _glueCrawlerTargetsS3Targets = a })
