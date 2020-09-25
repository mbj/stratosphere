{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-googleanalyticssourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowGoogleAnalyticsSourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowGoogleAnalyticsSourceProperties.
-- See 'appFlowFlowGoogleAnalyticsSourceProperties' for a more convenient
-- constructor.
data AppFlowFlowGoogleAnalyticsSourceProperties =
  AppFlowFlowGoogleAnalyticsSourceProperties
  { _appFlowFlowGoogleAnalyticsSourcePropertiesObject :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowGoogleAnalyticsSourceProperties where
  toJSON AppFlowFlowGoogleAnalyticsSourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("Object",) . toJSON) _appFlowFlowGoogleAnalyticsSourcePropertiesObject
    ]

-- | Constructor for 'AppFlowFlowGoogleAnalyticsSourceProperties' containing
-- required fields as arguments.
appFlowFlowGoogleAnalyticsSourceProperties
  :: Val Text -- ^ 'affgaspObject'
  -> AppFlowFlowGoogleAnalyticsSourceProperties
appFlowFlowGoogleAnalyticsSourceProperties objectarg =
  AppFlowFlowGoogleAnalyticsSourceProperties
  { _appFlowFlowGoogleAnalyticsSourcePropertiesObject = objectarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-googleanalyticssourceproperties.html#cfn-appflow-flow-googleanalyticssourceproperties-object
affgaspObject :: Lens' AppFlowFlowGoogleAnalyticsSourceProperties (Val Text)
affgaspObject = lens _appFlowFlowGoogleAnalyticsSourcePropertiesObject (\s a -> s { _appFlowFlowGoogleAnalyticsSourcePropertiesObject = a })
