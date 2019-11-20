{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html

module Stratosphere.ResourceProperties.GlueCrawlerDynamoDBTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerDynamoDBTarget. See
-- 'glueCrawlerDynamoDBTarget' for a more convenient constructor.
data GlueCrawlerDynamoDBTarget =
  GlueCrawlerDynamoDBTarget
  { _glueCrawlerDynamoDBTargetPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerDynamoDBTarget where
  toJSON GlueCrawlerDynamoDBTarget{..} =
    object $
    catMaybes
    [ fmap (("Path",) . toJSON) _glueCrawlerDynamoDBTargetPath
    ]

-- | Constructor for 'GlueCrawlerDynamoDBTarget' containing required fields as
-- arguments.
glueCrawlerDynamoDBTarget
  :: GlueCrawlerDynamoDBTarget
glueCrawlerDynamoDBTarget  =
  GlueCrawlerDynamoDBTarget
  { _glueCrawlerDynamoDBTargetPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html#cfn-glue-crawler-dynamodbtarget-path
gcddbtPath :: Lens' GlueCrawlerDynamoDBTarget (Maybe (Val Text))
gcddbtPath = lens _glueCrawlerDynamoDBTargetPath (\s a -> s { _glueCrawlerDynamoDBTargetPath = a })
