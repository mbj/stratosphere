module Stratosphere.CustomerProfiles.SegmentDefinition.SourceSegmentProperty (
        SourceSegmentProperty(..), mkSourceSegmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceSegmentProperty
  = SourceSegmentProperty {segmentDefinitionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceSegmentProperty :: SourceSegmentProperty
mkSourceSegmentProperty
  = SourceSegmentProperty {segmentDefinitionName = Prelude.Nothing}
instance ToResourceProperties SourceSegmentProperty where
  toResourceProperties SourceSegmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::SegmentDefinition.SourceSegment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SegmentDefinitionName"
                              Prelude.<$> segmentDefinitionName])}
instance JSON.ToJSON SourceSegmentProperty where
  toJSON SourceSegmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SegmentDefinitionName"
                 Prelude.<$> segmentDefinitionName]))
instance Property "SegmentDefinitionName" SourceSegmentProperty where
  type PropertyType "SegmentDefinitionName" SourceSegmentProperty = Value Prelude.Text
  set newValue SourceSegmentProperty {}
    = SourceSegmentProperty
        {segmentDefinitionName = Prelude.pure newValue, ..}