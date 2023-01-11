
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html

module Stratosphere.ResourceProperties.PinpointCampaignSchedule where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignCampaignEventFilter
import Stratosphere.ResourceProperties.PinpointCampaignQuietTime

-- | Full data type definition for PinpointCampaignSchedule. See
-- 'pinpointCampaignSchedule' for a more convenient constructor.
data PinpointCampaignSchedule =
  PinpointCampaignSchedule
  { _pinpointCampaignScheduleEndTime :: Maybe (Val Text)
  , _pinpointCampaignScheduleEventFilter :: Maybe PinpointCampaignCampaignEventFilter
  , _pinpointCampaignScheduleFrequency :: Maybe (Val Text)
  , _pinpointCampaignScheduleIsLocalTime :: Maybe (Val Bool)
  , _pinpointCampaignScheduleQuietTime :: Maybe PinpointCampaignQuietTime
  , _pinpointCampaignScheduleStartTime :: Maybe (Val Text)
  , _pinpointCampaignScheduleTimeZone :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignSchedule where
  toJSON PinpointCampaignSchedule{..} =
    object $
    catMaybes
    [ fmap (("EndTime",) . toJSON) _pinpointCampaignScheduleEndTime
    , fmap (("EventFilter",) . toJSON) _pinpointCampaignScheduleEventFilter
    , fmap (("Frequency",) . toJSON) _pinpointCampaignScheduleFrequency
    , fmap (("IsLocalTime",) . toJSON) _pinpointCampaignScheduleIsLocalTime
    , fmap (("QuietTime",) . toJSON) _pinpointCampaignScheduleQuietTime
    , fmap (("StartTime",) . toJSON) _pinpointCampaignScheduleStartTime
    , fmap (("TimeZone",) . toJSON) _pinpointCampaignScheduleTimeZone
    ]

-- | Constructor for 'PinpointCampaignSchedule' containing required fields as
-- arguments.
pinpointCampaignSchedule
  :: PinpointCampaignSchedule
pinpointCampaignSchedule  =
  PinpointCampaignSchedule
  { _pinpointCampaignScheduleEndTime = Nothing
  , _pinpointCampaignScheduleEventFilter = Nothing
  , _pinpointCampaignScheduleFrequency = Nothing
  , _pinpointCampaignScheduleIsLocalTime = Nothing
  , _pinpointCampaignScheduleQuietTime = Nothing
  , _pinpointCampaignScheduleStartTime = Nothing
  , _pinpointCampaignScheduleTimeZone = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-endtime
pcsEndTime :: Lens' PinpointCampaignSchedule (Maybe (Val Text))
pcsEndTime = lens _pinpointCampaignScheduleEndTime (\s a -> s { _pinpointCampaignScheduleEndTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-eventfilter
pcsEventFilter :: Lens' PinpointCampaignSchedule (Maybe PinpointCampaignCampaignEventFilter)
pcsEventFilter = lens _pinpointCampaignScheduleEventFilter (\s a -> s { _pinpointCampaignScheduleEventFilter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-frequency
pcsFrequency :: Lens' PinpointCampaignSchedule (Maybe (Val Text))
pcsFrequency = lens _pinpointCampaignScheduleFrequency (\s a -> s { _pinpointCampaignScheduleFrequency = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-islocaltime
pcsIsLocalTime :: Lens' PinpointCampaignSchedule (Maybe (Val Bool))
pcsIsLocalTime = lens _pinpointCampaignScheduleIsLocalTime (\s a -> s { _pinpointCampaignScheduleIsLocalTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-quiettime
pcsQuietTime :: Lens' PinpointCampaignSchedule (Maybe PinpointCampaignQuietTime)
pcsQuietTime = lens _pinpointCampaignScheduleQuietTime (\s a -> s { _pinpointCampaignScheduleQuietTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-starttime
pcsStartTime :: Lens' PinpointCampaignSchedule (Maybe (Val Text))
pcsStartTime = lens _pinpointCampaignScheduleStartTime (\s a -> s { _pinpointCampaignScheduleStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-timezone
pcsTimeZone :: Lens' PinpointCampaignSchedule (Maybe (Val Text))
pcsTimeZone = lens _pinpointCampaignScheduleTimeZone (\s a -> s { _pinpointCampaignScheduleTimeZone = a })
