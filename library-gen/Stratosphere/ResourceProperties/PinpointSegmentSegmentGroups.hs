
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html

module Stratosphere.ResourceProperties.PinpointSegmentSegmentGroups where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentGroups

-- | Full data type definition for PinpointSegmentSegmentGroups. See
-- 'pinpointSegmentSegmentGroups' for a more convenient constructor.
data PinpointSegmentSegmentGroups =
  PinpointSegmentSegmentGroups
  { _pinpointSegmentSegmentGroupsGroups :: Maybe [PinpointSegmentGroups]
  , _pinpointSegmentSegmentGroupsInclude :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointSegmentSegmentGroups where
  toJSON PinpointSegmentSegmentGroups{..} =
    object $
    catMaybes
    [ fmap (("Groups",) . toJSON) _pinpointSegmentSegmentGroupsGroups
    , fmap (("Include",) . toJSON) _pinpointSegmentSegmentGroupsInclude
    ]

-- | Constructor for 'PinpointSegmentSegmentGroups' containing required fields
-- as arguments.
pinpointSegmentSegmentGroups
  :: PinpointSegmentSegmentGroups
pinpointSegmentSegmentGroups  =
  PinpointSegmentSegmentGroups
  { _pinpointSegmentSegmentGroupsGroups = Nothing
  , _pinpointSegmentSegmentGroupsInclude = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-groups
pssgGroups :: Lens' PinpointSegmentSegmentGroups (Maybe [PinpointSegmentGroups])
pssgGroups = lens _pinpointSegmentSegmentGroupsGroups (\s a -> s { _pinpointSegmentSegmentGroupsGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups.html#cfn-pinpoint-segment-segmentgroups-include
pssgInclude :: Lens' PinpointSegmentSegmentGroups (Maybe (Val Text))
pssgInclude = lens _pinpointSegmentSegmentGroupsInclude (\s a -> s { _pinpointSegmentSegmentGroupsInclude = a })
