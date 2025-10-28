module Stratosphere.Pinpoint.Segment.SourceSegmentsProperty (
        SourceSegmentsProperty(..), mkSourceSegmentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceSegmentsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html>
    SourceSegmentsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-id>
                            id :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentgroups-groups-sourcesegments.html#cfn-pinpoint-segment-segmentgroups-groups-sourcesegments-version>
                            version :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceSegmentsProperty ::
  Value Prelude.Text -> SourceSegmentsProperty
mkSourceSegmentsProperty id
  = SourceSegmentsProperty
      {haddock_workaround_ = (), id = id, version = Prelude.Nothing}
instance ToResourceProperties SourceSegmentsProperty where
  toResourceProperties SourceSegmentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.SourceSegments",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON SourceSegmentsProperty where
  toJSON SourceSegmentsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Id" SourceSegmentsProperty where
  type PropertyType "Id" SourceSegmentsProperty = Value Prelude.Text
  set newValue SourceSegmentsProperty {..}
    = SourceSegmentsProperty {id = newValue, ..}
instance Property "Version" SourceSegmentsProperty where
  type PropertyType "Version" SourceSegmentsProperty = Value Prelude.Integer
  set newValue SourceSegmentsProperty {..}
    = SourceSegmentsProperty {version = Prelude.pure newValue, ..}