{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html

module Stratosphere.ResourceProperties.PinpointCampaignWriteTreatmentResource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignMessageConfiguration
import Stratosphere.ResourceProperties.PinpointCampaignSchedule

-- | Full data type definition for PinpointCampaignWriteTreatmentResource. See
-- 'pinpointCampaignWriteTreatmentResource' for a more convenient
-- constructor.
data PinpointCampaignWriteTreatmentResource =
  PinpointCampaignWriteTreatmentResource
  { _pinpointCampaignWriteTreatmentResourceMessageConfiguration :: Maybe PinpointCampaignMessageConfiguration
  , _pinpointCampaignWriteTreatmentResourceSchedule :: Maybe PinpointCampaignSchedule
  , _pinpointCampaignWriteTreatmentResourceSizePercent :: Maybe (Val Integer)
  , _pinpointCampaignWriteTreatmentResourceTreatmentDescription :: Maybe (Val Text)
  , _pinpointCampaignWriteTreatmentResourceTreatmentName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignWriteTreatmentResource where
  toJSON PinpointCampaignWriteTreatmentResource{..} =
    object $
    catMaybes
    [ fmap (("MessageConfiguration",) . toJSON) _pinpointCampaignWriteTreatmentResourceMessageConfiguration
    , fmap (("Schedule",) . toJSON) _pinpointCampaignWriteTreatmentResourceSchedule
    , fmap (("SizePercent",) . toJSON) _pinpointCampaignWriteTreatmentResourceSizePercent
    , fmap (("TreatmentDescription",) . toJSON) _pinpointCampaignWriteTreatmentResourceTreatmentDescription
    , fmap (("TreatmentName",) . toJSON) _pinpointCampaignWriteTreatmentResourceTreatmentName
    ]

-- | Constructor for 'PinpointCampaignWriteTreatmentResource' containing
-- required fields as arguments.
pinpointCampaignWriteTreatmentResource
  :: PinpointCampaignWriteTreatmentResource
pinpointCampaignWriteTreatmentResource  =
  PinpointCampaignWriteTreatmentResource
  { _pinpointCampaignWriteTreatmentResourceMessageConfiguration = Nothing
  , _pinpointCampaignWriteTreatmentResourceSchedule = Nothing
  , _pinpointCampaignWriteTreatmentResourceSizePercent = Nothing
  , _pinpointCampaignWriteTreatmentResourceTreatmentDescription = Nothing
  , _pinpointCampaignWriteTreatmentResourceTreatmentName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-messageconfiguration
pcwtrMessageConfiguration :: Lens' PinpointCampaignWriteTreatmentResource (Maybe PinpointCampaignMessageConfiguration)
pcwtrMessageConfiguration = lens _pinpointCampaignWriteTreatmentResourceMessageConfiguration (\s a -> s { _pinpointCampaignWriteTreatmentResourceMessageConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-schedule
pcwtrSchedule :: Lens' PinpointCampaignWriteTreatmentResource (Maybe PinpointCampaignSchedule)
pcwtrSchedule = lens _pinpointCampaignWriteTreatmentResourceSchedule (\s a -> s { _pinpointCampaignWriteTreatmentResourceSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-sizepercent
pcwtrSizePercent :: Lens' PinpointCampaignWriteTreatmentResource (Maybe (Val Integer))
pcwtrSizePercent = lens _pinpointCampaignWriteTreatmentResourceSizePercent (\s a -> s { _pinpointCampaignWriteTreatmentResourceSizePercent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentdescription
pcwtrTreatmentDescription :: Lens' PinpointCampaignWriteTreatmentResource (Maybe (Val Text))
pcwtrTreatmentDescription = lens _pinpointCampaignWriteTreatmentResourceTreatmentDescription (\s a -> s { _pinpointCampaignWriteTreatmentResourceTreatmentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentname
pcwtrTreatmentName :: Lens' PinpointCampaignWriteTreatmentResource (Maybe (Val Text))
pcwtrTreatmentName = lens _pinpointCampaignWriteTreatmentResourceTreatmentName (\s a -> s { _pinpointCampaignWriteTreatmentResourceTreatmentName = a })
