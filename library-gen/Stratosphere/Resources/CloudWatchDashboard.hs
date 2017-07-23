{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html

module Stratosphere.Resources.CloudWatchDashboard where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudWatchDashboard. See
-- 'cloudWatchDashboard' for a more convenient constructor.
data CloudWatchDashboard =
  CloudWatchDashboard
  { _cloudWatchDashboardDashboardBody :: Val Text
  , _cloudWatchDashboardDashboardName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudWatchDashboard where
  toJSON CloudWatchDashboard{..} =
    object $
    catMaybes
    [ (Just . ("DashboardBody",) . toJSON) _cloudWatchDashboardDashboardBody
    , fmap (("DashboardName",) . toJSON) _cloudWatchDashboardDashboardName
    ]

instance FromJSON CloudWatchDashboard where
  parseJSON (Object obj) =
    CloudWatchDashboard <$>
      (obj .: "DashboardBody") <*>
      (obj .:? "DashboardName")
  parseJSON _ = mempty

-- | Constructor for 'CloudWatchDashboard' containing required fields as
-- arguments.
cloudWatchDashboard
  :: Val Text -- ^ 'cwdDashboardBody'
  -> CloudWatchDashboard
cloudWatchDashboard dashboardBodyarg =
  CloudWatchDashboard
  { _cloudWatchDashboardDashboardBody = dashboardBodyarg
  , _cloudWatchDashboardDashboardName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardbody
cwdDashboardBody :: Lens' CloudWatchDashboard (Val Text)
cwdDashboardBody = lens _cloudWatchDashboardDashboardBody (\s a -> s { _cloudWatchDashboardDashboardBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardname
cwdDashboardName :: Lens' CloudWatchDashboard (Maybe (Val Text))
cwdDashboardName = lens _cloudWatchDashboardDashboardName (\s a -> s { _cloudWatchDashboardDashboardName = a })
