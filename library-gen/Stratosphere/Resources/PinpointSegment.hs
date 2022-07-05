{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html

module Stratosphere.Resources.PinpointSegment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointSegmentSegmentDimensions
import Stratosphere.ResourceProperties.PinpointSegmentSegmentGroups

-- | Full data type definition for PinpointSegment. See 'pinpointSegment' for
-- a more convenient constructor.
data PinpointSegment =
  PinpointSegment
  { _pinpointSegmentApplicationId :: Val Text
  , _pinpointSegmentDimensions :: Maybe PinpointSegmentSegmentDimensions
  , _pinpointSegmentName :: Val Text
  , _pinpointSegmentSegmentGroups :: Maybe PinpointSegmentSegmentGroups
  , _pinpointSegmentTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties PinpointSegment where
  toResourceProperties PinpointSegment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::Segment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointSegmentApplicationId
        , fmap (("Dimensions",) . toJSON) _pinpointSegmentDimensions
        , (Just . ("Name",) . toJSON) _pinpointSegmentName
        , fmap (("SegmentGroups",) . toJSON) _pinpointSegmentSegmentGroups
        , fmap (("Tags",) . toJSON) _pinpointSegmentTags
        ]
    }

-- | Constructor for 'PinpointSegment' containing required fields as
-- arguments.
pinpointSegment
  :: Val Text -- ^ 'psApplicationId'
  -> Val Text -- ^ 'psName'
  -> PinpointSegment
pinpointSegment applicationIdarg namearg =
  PinpointSegment
  { _pinpointSegmentApplicationId = applicationIdarg
  , _pinpointSegmentDimensions = Nothing
  , _pinpointSegmentName = namearg
  , _pinpointSegmentSegmentGroups = Nothing
  , _pinpointSegmentTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-applicationid
psApplicationId :: Lens' PinpointSegment (Val Text)
psApplicationId = lens _pinpointSegmentApplicationId (\s a -> s { _pinpointSegmentApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-dimensions
psDimensions :: Lens' PinpointSegment (Maybe PinpointSegmentSegmentDimensions)
psDimensions = lens _pinpointSegmentDimensions (\s a -> s { _pinpointSegmentDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-name
psName :: Lens' PinpointSegment (Val Text)
psName = lens _pinpointSegmentName (\s a -> s { _pinpointSegmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-segmentgroups
psSegmentGroups :: Lens' PinpointSegment (Maybe PinpointSegmentSegmentGroups)
psSegmentGroups = lens _pinpointSegmentSegmentGroups (\s a -> s { _pinpointSegmentSegmentGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-segment.html#cfn-pinpoint-segment-tags
psTags :: Lens' PinpointSegment (Maybe Object)
psTags = lens _pinpointSegmentTags (\s a -> s { _pinpointSegmentTags = a })
