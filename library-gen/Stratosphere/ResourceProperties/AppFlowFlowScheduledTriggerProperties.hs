{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowScheduledTriggerProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowScheduledTriggerProperties. See
-- 'appFlowFlowScheduledTriggerProperties' for a more convenient
-- constructor.
data AppFlowFlowScheduledTriggerProperties =
  AppFlowFlowScheduledTriggerProperties
  { _appFlowFlowScheduledTriggerPropertiesDataPullMode :: Maybe (Val Text)
  , _appFlowFlowScheduledTriggerPropertiesScheduleEndTime :: Maybe (Val Double)
  , _appFlowFlowScheduledTriggerPropertiesScheduleExpression :: Val Text
  , _appFlowFlowScheduledTriggerPropertiesScheduleStartTime :: Maybe (Val Double)
  , _appFlowFlowScheduledTriggerPropertiesTimeZone :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowScheduledTriggerProperties where
  toJSON AppFlowFlowScheduledTriggerProperties{..} =
    object $
    catMaybes
    [ fmap (("DataPullMode",) . toJSON) _appFlowFlowScheduledTriggerPropertiesDataPullMode
    , fmap (("ScheduleEndTime",) . toJSON) _appFlowFlowScheduledTriggerPropertiesScheduleEndTime
    , (Just . ("ScheduleExpression",) . toJSON) _appFlowFlowScheduledTriggerPropertiesScheduleExpression
    , fmap (("ScheduleStartTime",) . toJSON) _appFlowFlowScheduledTriggerPropertiesScheduleStartTime
    , fmap (("TimeZone",) . toJSON) _appFlowFlowScheduledTriggerPropertiesTimeZone
    ]

-- | Constructor for 'AppFlowFlowScheduledTriggerProperties' containing
-- required fields as arguments.
appFlowFlowScheduledTriggerProperties
  :: Val Text -- ^ 'affstpScheduleExpression'
  -> AppFlowFlowScheduledTriggerProperties
appFlowFlowScheduledTriggerProperties scheduleExpressionarg =
  AppFlowFlowScheduledTriggerProperties
  { _appFlowFlowScheduledTriggerPropertiesDataPullMode = Nothing
  , _appFlowFlowScheduledTriggerPropertiesScheduleEndTime = Nothing
  , _appFlowFlowScheduledTriggerPropertiesScheduleExpression = scheduleExpressionarg
  , _appFlowFlowScheduledTriggerPropertiesScheduleStartTime = Nothing
  , _appFlowFlowScheduledTriggerPropertiesTimeZone = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-datapullmode
affstpDataPullMode :: Lens' AppFlowFlowScheduledTriggerProperties (Maybe (Val Text))
affstpDataPullMode = lens _appFlowFlowScheduledTriggerPropertiesDataPullMode (\s a -> s { _appFlowFlowScheduledTriggerPropertiesDataPullMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-scheduleendtime
affstpScheduleEndTime :: Lens' AppFlowFlowScheduledTriggerProperties (Maybe (Val Double))
affstpScheduleEndTime = lens _appFlowFlowScheduledTriggerPropertiesScheduleEndTime (\s a -> s { _appFlowFlowScheduledTriggerPropertiesScheduleEndTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-scheduleexpression
affstpScheduleExpression :: Lens' AppFlowFlowScheduledTriggerProperties (Val Text)
affstpScheduleExpression = lens _appFlowFlowScheduledTriggerPropertiesScheduleExpression (\s a -> s { _appFlowFlowScheduledTriggerPropertiesScheduleExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-schedulestarttime
affstpScheduleStartTime :: Lens' AppFlowFlowScheduledTriggerProperties (Maybe (Val Double))
affstpScheduleStartTime = lens _appFlowFlowScheduledTriggerPropertiesScheduleStartTime (\s a -> s { _appFlowFlowScheduledTriggerPropertiesScheduleStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-scheduledtriggerproperties.html#cfn-appflow-flow-scheduledtriggerproperties-timezone
affstpTimeZone :: Lens' AppFlowFlowScheduledTriggerProperties (Maybe (Val Text))
affstpTimeZone = lens _appFlowFlowScheduledTriggerPropertiesTimeZone (\s a -> s { _appFlowFlowScheduledTriggerPropertiesTimeZone = a })
