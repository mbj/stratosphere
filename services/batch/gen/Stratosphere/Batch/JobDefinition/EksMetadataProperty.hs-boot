module Stratosphere.Batch.JobDefinition.EksMetadataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksMetadataProperty :: Prelude.Type
instance ToResourceProperties EksMetadataProperty
instance Prelude.Eq EksMetadataProperty
instance Prelude.Show EksMetadataProperty
instance JSON.ToJSON EksMetadataProperty