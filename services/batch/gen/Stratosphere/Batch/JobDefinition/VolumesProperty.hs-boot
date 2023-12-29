module Stratosphere.Batch.JobDefinition.VolumesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VolumesProperty :: Prelude.Type
instance ToResourceProperties VolumesProperty
instance Prelude.Eq VolumesProperty
instance Prelude.Show VolumesProperty
instance JSON.ToJSON VolumesProperty