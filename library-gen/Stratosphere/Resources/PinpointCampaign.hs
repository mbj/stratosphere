{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html

module Stratosphere.Resources.PinpointCampaign where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointCampaignWriteTreatmentResource
import Stratosphere.ResourceProperties.PinpointCampaignCampaignHook
import Stratosphere.ResourceProperties.PinpointCampaignLimits
import Stratosphere.ResourceProperties.PinpointCampaignMessageConfiguration
import Stratosphere.ResourceProperties.PinpointCampaignSchedule

-- | Full data type definition for PinpointCampaign. See 'pinpointCampaign'
-- for a more convenient constructor.
data PinpointCampaign =
  PinpointCampaign
  { _pinpointCampaignAdditionalTreatments :: Maybe [PinpointCampaignWriteTreatmentResource]
  , _pinpointCampaignApplicationId :: Val Text
  , _pinpointCampaignCampaignHook :: Maybe PinpointCampaignCampaignHook
  , _pinpointCampaignDescription :: Maybe (Val Text)
  , _pinpointCampaignHoldoutPercent :: Maybe (Val Integer)
  , _pinpointCampaignIsPaused :: Maybe (Val Bool)
  , _pinpointCampaignLimits :: Maybe PinpointCampaignLimits
  , _pinpointCampaignMessageConfiguration :: PinpointCampaignMessageConfiguration
  , _pinpointCampaignName :: Val Text
  , _pinpointCampaignSchedule :: PinpointCampaignSchedule
  , _pinpointCampaignSegmentId :: Val Text
  , _pinpointCampaignSegmentVersion :: Maybe (Val Integer)
  , _pinpointCampaignTags :: Maybe Object
  , _pinpointCampaignTreatmentDescription :: Maybe (Val Text)
  , _pinpointCampaignTreatmentName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointCampaign where
  toResourceProperties PinpointCampaign{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::Campaign"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AdditionalTreatments",) . toJSON) _pinpointCampaignAdditionalTreatments
        , (Just . ("ApplicationId",) . toJSON) _pinpointCampaignApplicationId
        , fmap (("CampaignHook",) . toJSON) _pinpointCampaignCampaignHook
        , fmap (("Description",) . toJSON) _pinpointCampaignDescription
        , fmap (("HoldoutPercent",) . toJSON) _pinpointCampaignHoldoutPercent
        , fmap (("IsPaused",) . toJSON) _pinpointCampaignIsPaused
        , fmap (("Limits",) . toJSON) _pinpointCampaignLimits
        , (Just . ("MessageConfiguration",) . toJSON) _pinpointCampaignMessageConfiguration
        , (Just . ("Name",) . toJSON) _pinpointCampaignName
        , (Just . ("Schedule",) . toJSON) _pinpointCampaignSchedule
        , (Just . ("SegmentId",) . toJSON) _pinpointCampaignSegmentId
        , fmap (("SegmentVersion",) . toJSON) _pinpointCampaignSegmentVersion
        , fmap (("Tags",) . toJSON) _pinpointCampaignTags
        , fmap (("TreatmentDescription",) . toJSON) _pinpointCampaignTreatmentDescription
        , fmap (("TreatmentName",) . toJSON) _pinpointCampaignTreatmentName
        ]
    }

-- | Constructor for 'PinpointCampaign' containing required fields as
-- arguments.
pinpointCampaign
  :: Val Text -- ^ 'pcApplicationId'
  -> PinpointCampaignMessageConfiguration -- ^ 'pcMessageConfiguration'
  -> Val Text -- ^ 'pcName'
  -> PinpointCampaignSchedule -- ^ 'pcSchedule'
  -> Val Text -- ^ 'pcSegmentId'
  -> PinpointCampaign
pinpointCampaign applicationIdarg messageConfigurationarg namearg schedulearg segmentIdarg =
  PinpointCampaign
  { _pinpointCampaignAdditionalTreatments = Nothing
  , _pinpointCampaignApplicationId = applicationIdarg
  , _pinpointCampaignCampaignHook = Nothing
  , _pinpointCampaignDescription = Nothing
  , _pinpointCampaignHoldoutPercent = Nothing
  , _pinpointCampaignIsPaused = Nothing
  , _pinpointCampaignLimits = Nothing
  , _pinpointCampaignMessageConfiguration = messageConfigurationarg
  , _pinpointCampaignName = namearg
  , _pinpointCampaignSchedule = schedulearg
  , _pinpointCampaignSegmentId = segmentIdarg
  , _pinpointCampaignSegmentVersion = Nothing
  , _pinpointCampaignTags = Nothing
  , _pinpointCampaignTreatmentDescription = Nothing
  , _pinpointCampaignTreatmentName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-additionaltreatments
pcAdditionalTreatments :: Lens' PinpointCampaign (Maybe [PinpointCampaignWriteTreatmentResource])
pcAdditionalTreatments = lens _pinpointCampaignAdditionalTreatments (\s a -> s { _pinpointCampaignAdditionalTreatments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-applicationid
pcApplicationId :: Lens' PinpointCampaign (Val Text)
pcApplicationId = lens _pinpointCampaignApplicationId (\s a -> s { _pinpointCampaignApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-campaignhook
pcCampaignHook :: Lens' PinpointCampaign (Maybe PinpointCampaignCampaignHook)
pcCampaignHook = lens _pinpointCampaignCampaignHook (\s a -> s { _pinpointCampaignCampaignHook = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-description
pcDescription :: Lens' PinpointCampaign (Maybe (Val Text))
pcDescription = lens _pinpointCampaignDescription (\s a -> s { _pinpointCampaignDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-holdoutpercent
pcHoldoutPercent :: Lens' PinpointCampaign (Maybe (Val Integer))
pcHoldoutPercent = lens _pinpointCampaignHoldoutPercent (\s a -> s { _pinpointCampaignHoldoutPercent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-ispaused
pcIsPaused :: Lens' PinpointCampaign (Maybe (Val Bool))
pcIsPaused = lens _pinpointCampaignIsPaused (\s a -> s { _pinpointCampaignIsPaused = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-limits
pcLimits :: Lens' PinpointCampaign (Maybe PinpointCampaignLimits)
pcLimits = lens _pinpointCampaignLimits (\s a -> s { _pinpointCampaignLimits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-messageconfiguration
pcMessageConfiguration :: Lens' PinpointCampaign PinpointCampaignMessageConfiguration
pcMessageConfiguration = lens _pinpointCampaignMessageConfiguration (\s a -> s { _pinpointCampaignMessageConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-name
pcName :: Lens' PinpointCampaign (Val Text)
pcName = lens _pinpointCampaignName (\s a -> s { _pinpointCampaignName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-schedule
pcSchedule :: Lens' PinpointCampaign PinpointCampaignSchedule
pcSchedule = lens _pinpointCampaignSchedule (\s a -> s { _pinpointCampaignSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-segmentid
pcSegmentId :: Lens' PinpointCampaign (Val Text)
pcSegmentId = lens _pinpointCampaignSegmentId (\s a -> s { _pinpointCampaignSegmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-segmentversion
pcSegmentVersion :: Lens' PinpointCampaign (Maybe (Val Integer))
pcSegmentVersion = lens _pinpointCampaignSegmentVersion (\s a -> s { _pinpointCampaignSegmentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-tags
pcTags :: Lens' PinpointCampaign (Maybe Object)
pcTags = lens _pinpointCampaignTags (\s a -> s { _pinpointCampaignTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-treatmentdescription
pcTreatmentDescription :: Lens' PinpointCampaign (Maybe (Val Text))
pcTreatmentDescription = lens _pinpointCampaignTreatmentDescription (\s a -> s { _pinpointCampaignTreatmentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-treatmentname
pcTreatmentName :: Lens' PinpointCampaign (Maybe (Val Text))
pcTreatmentName = lens _pinpointCampaignTreatmentName (\s a -> s { _pinpointCampaignTreatmentName = a })
