module Stratosphere.Batch.JobDefinition.VolumesHostProperty (
        VolumesHostProperty(..), mkVolumesHostProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumesHostProperty
  = VolumesHostProperty {sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumesHostProperty :: VolumesHostProperty
mkVolumesHostProperty
  = VolumesHostProperty {sourcePath = Prelude.Nothing}
instance ToResourceProperties VolumesHostProperty where
  toResourceProperties VolumesHostProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.VolumesHost",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourcePath" Prelude.<$> sourcePath])}
instance JSON.ToJSON VolumesHostProperty where
  toJSON VolumesHostProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourcePath" Prelude.<$> sourcePath]))
instance Property "SourcePath" VolumesHostProperty where
  type PropertyType "SourcePath" VolumesHostProperty = Value Prelude.Text
  set newValue VolumesHostProperty {}
    = VolumesHostProperty {sourcePath = Prelude.pure newValue, ..}