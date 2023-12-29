module Stratosphere.Batch.JobDefinition.VolumesHostProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VolumesHostProperty :: Prelude.Type
instance ToResourceProperties VolumesHostProperty
instance Prelude.Eq VolumesHostProperty
instance Prelude.Show VolumesHostProperty
instance JSON.ToJSON VolumesHostProperty