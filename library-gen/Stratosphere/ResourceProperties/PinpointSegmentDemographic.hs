
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html

module Stratosphere.ResourceProperties.PinpointSegmentDemographic where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentSetDimension

-- | Full data type definition for PinpointSegmentDemographic. See
-- 'pinpointSegmentDemographic' for a more convenient constructor.
data PinpointSegmentDemographic =
  PinpointSegmentDemographic
  { _pinpointSegmentDemographicAppVersion :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentDemographicChannel :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentDemographicDeviceType :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentDemographicMake :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentDemographicModel :: Maybe PinpointSegmentSetDimension
  , _pinpointSegmentDemographicPlatform :: Maybe PinpointSegmentSetDimension
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentDemographic where
  toJSON PinpointSegmentDemographic{..} =
    object $
    catMaybes
    [ fmap (("AppVersion",) . toJSON) _pinpointSegmentDemographicAppVersion
    , fmap (("Channel",) . toJSON) _pinpointSegmentDemographicChannel
    , fmap (("DeviceType",) . toJSON) _pinpointSegmentDemographicDeviceType
    , fmap (("Make",) . toJSON) _pinpointSegmentDemographicMake
    , fmap (("Model",) . toJSON) _pinpointSegmentDemographicModel
    , fmap (("Platform",) . toJSON) _pinpointSegmentDemographicPlatform
    ]

-- | Constructor for 'PinpointSegmentDemographic' containing required fields
-- as arguments.
pinpointSegmentDemographic
  :: PinpointSegmentDemographic
pinpointSegmentDemographic  =
  PinpointSegmentDemographic
  { _pinpointSegmentDemographicAppVersion = Nothing
  , _pinpointSegmentDemographicChannel = Nothing
  , _pinpointSegmentDemographicDeviceType = Nothing
  , _pinpointSegmentDemographicMake = Nothing
  , _pinpointSegmentDemographicModel = Nothing
  , _pinpointSegmentDemographicPlatform = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-appversion
psdAppVersion :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdAppVersion = lens _pinpointSegmentDemographicAppVersion (\s a -> s { _pinpointSegmentDemographicAppVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-channel
psdChannel :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdChannel = lens _pinpointSegmentDemographicChannel (\s a -> s { _pinpointSegmentDemographicChannel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-devicetype
psdDeviceType :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdDeviceType = lens _pinpointSegmentDemographicDeviceType (\s a -> s { _pinpointSegmentDemographicDeviceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-make
psdMake :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdMake = lens _pinpointSegmentDemographicMake (\s a -> s { _pinpointSegmentDemographicMake = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-model
psdModel :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdModel = lens _pinpointSegmentDemographicModel (\s a -> s { _pinpointSegmentDemographicModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-platform
psdPlatform :: Lens' PinpointSegmentDemographic (Maybe PinpointSegmentSetDimension)
psdPlatform = lens _pinpointSegmentDemographicPlatform (\s a -> s { _pinpointSegmentDemographicPlatform = a })
