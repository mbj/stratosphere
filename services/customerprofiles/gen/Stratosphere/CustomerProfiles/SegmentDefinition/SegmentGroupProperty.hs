module Stratosphere.CustomerProfiles.SegmentDefinition.SegmentGroupProperty (
        module Exports, SegmentGroupProperty(..), mkSegmentGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.SegmentDefinition.GroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentGroupProperty
  = SegmentGroupProperty {groups :: (Prelude.Maybe [GroupProperty]),
                          include :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentGroupProperty :: SegmentGroupProperty
mkSegmentGroupProperty
  = SegmentGroupProperty
      {groups = Prelude.Nothing, include = Prelude.Nothing}
instance ToResourceProperties SegmentGroupProperty where
  toResourceProperties SegmentGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.SegmentGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "Include" Prelude.<$> include])}
instance JSON.ToJSON SegmentGroupProperty where
  toJSON SegmentGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "Include" Prelude.<$> include]))
instance Property "Groups" SegmentGroupProperty where
  type PropertyType "Groups" SegmentGroupProperty = [GroupProperty]
  set newValue SegmentGroupProperty {..}
    = SegmentGroupProperty {groups = Prelude.pure newValue, ..}
instance Property "Include" SegmentGroupProperty where
  type PropertyType "Include" SegmentGroupProperty = Value Prelude.Text
  set newValue SegmentGroupProperty {..}
    = SegmentGroupProperty {include = Prelude.pure newValue, ..}