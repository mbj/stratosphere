module Stratosphere.Pinpoint.Segment.SegmentGroupsProperty (
        module Exports, SegmentGroupsProperty(..), mkSegmentGroupsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.GroupsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentGroupsProperty
  = SegmentGroupsProperty {groups :: (Prelude.Maybe [GroupsProperty]),
                           include :: (Prelude.Maybe (Value Prelude.Text))}
mkSegmentGroupsProperty :: SegmentGroupsProperty
mkSegmentGroupsProperty
  = SegmentGroupsProperty
      {groups = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties SegmentGroupsProperty where
  toResourceProperties SegmentGroupsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.SegmentGroups",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON SegmentGroupsProperty where
  toJSON SegmentGroupsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Groups" SegmentGroupsProperty where
  type PropertyType "Groups" SegmentGroupsProperty = [GroupsProperty]
  set newValue SegmentGroupsProperty {..}
    = SegmentGroupsProperty {groups = Prelude.pure newValue, ..}
instance Property "Include" SegmentGroupsProperty where
  type PropertyType "Include" SegmentGroupsProperty = Value Prelude.Text
  set newValue SegmentGroupsProperty {..}
    = SegmentGroupsProperty {include = Prelude.pure newValue, ..}