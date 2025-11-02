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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html>
    SegmentDimensionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-attributes>
                               attributes :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-behavior>
                               behavior :: (Prelude.Maybe BehaviorProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-demographic>
                               demographic :: (Prelude.Maybe DemographicProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-location>
                               location :: (Prelude.Maybe LocationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-metrics>
                               metrics :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions.html#cfn-pinpoint-segment-segmentdimensions-userattributes>
                               userAttributes :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentDimensionsProperty :: SegmentDimensionsProperty
mkSegmentDimensionsProperty
  = SegmentDimensionsProperty
      {haddock_workaround_ = (), attributes = Prelude.Nothing,
       behavior = Prelude.Nothing, demographic = Prelude.Nothing,
       location = Prelude.Nothing, metrics = Prelude.Nothing,
       userAttributes = Prelude.Nothing}
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