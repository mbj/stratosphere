module Stratosphere.Pinpoint.Segment.SourceSegmentsProperty (
        SourceSegmentsProperty(..), mkSourceSegmentsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceSegmentsProperty
  = SourceSegmentsProperty {id :: (Value Prelude.Text),
                            version :: (Prelude.Maybe (Value Prelude.Integer))}
mkSourceSegmentsProperty ::
  Value Prelude.Text -> SourceSegmentsProperty
mkSourceSegmentsProperty id
  = SourceSegmentsProperty {id = id, version = Prelude.Nothing}
instance ToResourceProperties SourceSegmentsProperty where
  toResourceProperties SourceSegmentsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.SourceSegments",
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