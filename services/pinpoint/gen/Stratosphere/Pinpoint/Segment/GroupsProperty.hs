module Stratosphere.Pinpoint.Segment.GroupsProperty (
        module Exports, GroupsProperty(..), mkGroupsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SegmentDimensionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SourceSegmentsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html>
    GroupsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-dimensions>
                    dimensions :: (Prelude.Maybe [SegmentDimensionsProperty]),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments>
                    sourceSegments :: (Prelude.Maybe [SourceSegmentsProperty]),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-sourcetype>
                    sourceType :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups.html#cfn-pinpoint-segment-segmentgroups-groups-type>
                    type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupsProperty :: GroupsProperty
mkGroupsProperty
  = GroupsProperty
      {dimensions = Prelude.Nothing, sourceSegments = Prelude.Nothing,
       sourceType = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties GroupsProperty where
  toResourceProperties GroupsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Groups",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "SourceSegments" Prelude.<$> sourceSegments,
                            (JSON..=) "SourceType" Prelude.<$> sourceType,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON GroupsProperty where
  toJSON GroupsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "SourceSegments" Prelude.<$> sourceSegments,
               (JSON..=) "SourceType" Prelude.<$> sourceType,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Dimensions" GroupsProperty where
  type PropertyType "Dimensions" GroupsProperty = [SegmentDimensionsProperty]
  set newValue GroupsProperty {..}
    = GroupsProperty {dimensions = Prelude.pure newValue, ..}
instance Property "SourceSegments" GroupsProperty where
  type PropertyType "SourceSegments" GroupsProperty = [SourceSegmentsProperty]
  set newValue GroupsProperty {..}
    = GroupsProperty {sourceSegments = Prelude.pure newValue, ..}
instance Property "SourceType" GroupsProperty where
  type PropertyType "SourceType" GroupsProperty = Value Prelude.Text
  set newValue GroupsProperty {..}
    = GroupsProperty {sourceType = Prelude.pure newValue, ..}
instance Property "Type" GroupsProperty where
  type PropertyType "Type" GroupsProperty = Value Prelude.Text
  set newValue GroupsProperty {..}
    = GroupsProperty {type' = Prelude.pure newValue, ..}