{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html

module Stratosphere.ResourceProperties.PinpointSegmentGroups where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentSegmentDimensions
import Stratosphere.ResourceProperties.PinpointSegmentSourceSegments

-- | Full data type definition for PinpointSegmentGroups. See
-- 'pinpointSegmentGroups' for a more convenient constructor.
data PinpointSegmentGroups =
  PinpointSegmentGroups
  { _pinpointSegmentGroupsDimensions :: Maybe [PinpointSegmentSegmentDimensions]
  , _pinpointSegmentGroupsSourceSegments :: Maybe [PinpointSegmentSourceSegments]
  , _pinpointSegmentGroupsSourceType :: Maybe (Val Text)
  , _pinpointSegmentGroupsType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentGroups where
  toJSON PinpointSegmentGroups{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _pinpointSegmentGroupsDimensions
    , fmap (("SourceSegments",) . toJSON) _pinpointSegmentGroupsSourceSegments
    , fmap (("SourceType",) . toJSON) _pinpointSegmentGroupsSourceType
    , fmap (("Type",) . toJSON) _pinpointSegmentGroupsType
    ]

-- | Constructor for 'PinpointSegmentGroups' containing required fields as
-- arguments.
pinpointSegmentGroups
  :: PinpointSegmentGroups
pinpointSegmentGroups  =
  PinpointSegmentGroups
  { _pinpointSegmentGroupsDimensions = Nothing
  , _pinpointSegmentGroupsSourceSegments = Nothing
  , _pinpointSegmentGroupsSourceType = Nothing
  , _pinpointSegmentGroupsType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-dimensions
psgDimensions :: Lens' PinpointSegmentGroups (Maybe [PinpointSegmentSegmentDimensions])
psgDimensions = lens _pinpointSegmentGroupsDimensions (\s a -> s { _pinpointSegmentGroupsDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments
psgSourceSegments :: Lens' PinpointSegmentGroups (Maybe [PinpointSegmentSourceSegments])
psgSourceSegments = lens _pinpointSegmentGroupsSourceSegments (\s a -> s { _pinpointSegmentGroupsSourceSegments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcetype
psgSourceType :: Lens' PinpointSegmentGroups (Maybe (Val Text))
psgSourceType = lens _pinpointSegmentGroupsSourceType (\s a -> s { _pinpointSegmentGroupsSourceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-type
psgType :: Lens' PinpointSegmentGroups (Maybe (Val Text))
psgType = lens _pinpointSegmentGroupsType (\s a -> s { _pinpointSegmentGroupsType = a })
