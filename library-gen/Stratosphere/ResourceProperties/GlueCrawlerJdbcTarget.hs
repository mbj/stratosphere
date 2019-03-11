{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html

module Stratosphere.ResourceProperties.GlueCrawlerJdbcTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerJdbcTarget. See
-- 'glueCrawlerJdbcTarget' for a more convenient constructor.
data GlueCrawlerJdbcTarget =
  GlueCrawlerJdbcTarget
  { _glueCrawlerJdbcTargetConnectionName :: Maybe (Val Text)
  , _glueCrawlerJdbcTargetExclusions :: Maybe (ValList Text)
  , _glueCrawlerJdbcTargetPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerJdbcTarget where
  toJSON GlueCrawlerJdbcTarget{..} =
    object $
    catMaybes
    [ fmap (("ConnectionName",) . toJSON) _glueCrawlerJdbcTargetConnectionName
    , fmap (("Exclusions",) . toJSON) _glueCrawlerJdbcTargetExclusions
    , fmap (("Path",) . toJSON) _glueCrawlerJdbcTargetPath
    ]

-- | Constructor for 'GlueCrawlerJdbcTarget' containing required fields as
-- arguments.
glueCrawlerJdbcTarget
  :: GlueCrawlerJdbcTarget
glueCrawlerJdbcTarget  =
  GlueCrawlerJdbcTarget
  { _glueCrawlerJdbcTargetConnectionName = Nothing
  , _glueCrawlerJdbcTargetExclusions = Nothing
  , _glueCrawlerJdbcTargetPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-connectionname
gcjtConnectionName :: Lens' GlueCrawlerJdbcTarget (Maybe (Val Text))
gcjtConnectionName = lens _glueCrawlerJdbcTargetConnectionName (\s a -> s { _glueCrawlerJdbcTargetConnectionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-exclusions
gcjtExclusions :: Lens' GlueCrawlerJdbcTarget (Maybe (ValList Text))
gcjtExclusions = lens _glueCrawlerJdbcTargetExclusions (\s a -> s { _glueCrawlerJdbcTargetExclusions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-path
gcjtPath :: Lens' GlueCrawlerJdbcTarget (Maybe (Val Text))
gcjtPath = lens _glueCrawlerJdbcTargetPath (\s a -> s { _glueCrawlerJdbcTargetPath = a })
