module Stratosphere.Batch.JobDefinition.EksVolumeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksVolumeProperty :: Prelude.Type
instance ToResourceProperties EksVolumeProperty
instance Prelude.Eq EksVolumeProperty
instance Prelude.Show EksVolumeProperty
instance JSON.ToJSON EksVolumeProperty