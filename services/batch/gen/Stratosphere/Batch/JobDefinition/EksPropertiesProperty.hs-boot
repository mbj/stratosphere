module Stratosphere.Batch.JobDefinition.EksPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksPropertiesProperty :: Prelude.Type
instance ToResourceProperties EksPropertiesProperty
instance Prelude.Eq EksPropertiesProperty
instance Prelude.Show EksPropertiesProperty
instance JSON.ToJSON EksPropertiesProperty