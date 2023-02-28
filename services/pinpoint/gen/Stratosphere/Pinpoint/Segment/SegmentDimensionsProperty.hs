module Stratosphere.Pinpoint.Segment.SegmentDimensionsProperty (
        module Exports, SegmentDimensionsProperty(..),
        mkSegmentDimensionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.BehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.DemographicProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.LocationProperty as Exports
import Stratosphere.ResourceProperties
data SegmentDimensionsProperty
  = SegmentDimensionsProperty {attributes :: (Prelude.Maybe JSON.Object),
                               behavior :: (Prelude.Maybe BehaviorProperty),
                               demographic :: (Prelude.Maybe DemographicProperty),
                               location :: (Prelude.Maybe LocationProperty),
                               metrics :: (Prelude.Maybe JSON.Object),
                               userAttributes :: (Prelude.Maybe JSON.Object)}
mkSegmentDimensionsProperty :: SegmentDimensionsProperty
mkSegmentDimensionsProperty
  = SegmentDimensionsProperty
      {attributes = Prelude.Nothing, behavior = Prelude.Nothing,
       demographic = Prelude.Nothing, location = Prelude.Nothing,
       metrics = Prelude.Nothing, userAttributes = Prelude.Nothing}
instance ToResourceProperties SegmentDimensionsProperty where
  toResourceProperties SegmentDimensionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.SegmentDimensions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes,
                            (JSON..=) "Behavior" Prelude.<$> behavior,
                            (JSON..=) "Demographic" Prelude.<$> demographic,
                            (JSON..=) "Location" Prelude.<$> location,
                            (JSON..=) "Metrics" Prelude.<$> metrics,
                            (JSON..=) "UserAttributes" Prelude.<$> userAttributes])}
instance JSON.ToJSON SegmentDimensionsProperty where
  toJSON SegmentDimensionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes,
               (JSON..=) "Behavior" Prelude.<$> behavior,
               (JSON..=) "Demographic" Prelude.<$> demographic,
               (JSON..=) "Location" Prelude.<$> location,
               (JSON..=) "Metrics" Prelude.<$> metrics,
               (JSON..=) "UserAttributes" Prelude.<$> userAttributes]))
instance Property "Attributes" SegmentDimensionsProperty where
  type PropertyType "Attributes" SegmentDimensionsProperty = JSON.Object
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty
        {attributes = Prelude.pure newValue, ..}
instance Property "Behavior" SegmentDimensionsProperty where
  type PropertyType "Behavior" SegmentDimensionsProperty = BehaviorProperty
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty {behavior = Prelude.pure newValue, ..}
instance Property "Demographic" SegmentDimensionsProperty where
  type PropertyType "Demographic" SegmentDimensionsProperty = DemographicProperty
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty
        {demographic = Prelude.pure newValue, ..}
instance Property "Location" SegmentDimensionsProperty where
  type PropertyType "Location" SegmentDimensionsProperty = LocationProperty
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty {location = Prelude.pure newValue, ..}
instance Property "Metrics" SegmentDimensionsProperty where
  type PropertyType "Metrics" SegmentDimensionsProperty = JSON.Object
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty {metrics = Prelude.pure newValue, ..}
instance Property "UserAttributes" SegmentDimensionsProperty where
  type PropertyType "UserAttributes" SegmentDimensionsProperty = JSON.Object
  set newValue SegmentDimensionsProperty {..}
    = SegmentDimensionsProperty
        {userAttributes = Prelude.pure newValue, ..}