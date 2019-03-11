{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html

module Stratosphere.ResourceProperties.GlueCrawlerSchedule where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueCrawlerSchedule. See
-- 'glueCrawlerSchedule' for a more convenient constructor.
data GlueCrawlerSchedule =
  GlueCrawlerSchedule
  { _glueCrawlerScheduleScheduleExpression :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueCrawlerSchedule where
  toJSON GlueCrawlerSchedule{..} =
    object $
    catMaybes
    [ fmap (("ScheduleExpression",) . toJSON) _glueCrawlerScheduleScheduleExpression
    ]

-- | Constructor for 'GlueCrawlerSchedule' containing required fields as
-- arguments.
glueCrawlerSchedule
  :: GlueCrawlerSchedule
glueCrawlerSchedule  =
  GlueCrawlerSchedule
  { _glueCrawlerScheduleScheduleExpression = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html#cfn-glue-crawler-schedule-scheduleexpression
gcsScheduleExpression :: Lens' GlueCrawlerSchedule (Maybe (Val Text))
gcsScheduleExpression = lens _glueCrawlerScheduleScheduleExpression (\s a -> s { _glueCrawlerScheduleScheduleExpression = a })
