module Stratosphere.Pinpoint.Segment (
        module Exports, Segment(..), mkSegment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SegmentDimensionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SegmentGroupsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Segment
  = Segment {applicationId :: (Value Prelude.Text),
             dimensions :: (Prelude.Maybe SegmentDimensionsProperty),
             name :: (Value Prelude.Text),
             segmentGroups :: (Prelude.Maybe SegmentGroupsProperty),
             tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegment :: Value Prelude.Text -> Value Prelude.Text -> Segment
mkSegment applicationId name
  = Segment
      {applicationId = applicationId, name = name,
       dimensions = Prelude.Nothing, segmentGroups = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Segment where
  toResourceProperties Segment {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "SegmentGroups" Prelude.<$> segmentGroups,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Segment where
  toJSON Segment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "SegmentGroups" Prelude.<$> segmentGroups,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Segment where
  type PropertyType "ApplicationId" Segment = Value Prelude.Text
  set newValue Segment {..} = Segment {applicationId = newValue, ..}
instance Property "Dimensions" Segment where
  type PropertyType "Dimensions" Segment = SegmentDimensionsProperty
  set newValue Segment {..}
    = Segment {dimensions = Prelude.pure newValue, ..}
instance Property "Name" Segment where
  type PropertyType "Name" Segment = Value Prelude.Text
  set newValue Segment {..} = Segment {name = newValue, ..}
instance Property "SegmentGroups" Segment where
  type PropertyType "SegmentGroups" Segment = SegmentGroupsProperty
  set newValue Segment {..}
    = Segment {segmentGroups = Prelude.pure newValue, ..}
instance Property "Tags" Segment where
  type PropertyType "Tags" Segment = JSON.Object
  set newValue Segment {..}
    = Segment {tags = Prelude.pure newValue, ..}