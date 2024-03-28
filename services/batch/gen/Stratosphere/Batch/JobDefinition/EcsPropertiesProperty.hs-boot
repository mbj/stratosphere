module Stratosphere.Batch.JobDefinition.EcsPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EcsPropertiesProperty :: Prelude.Type
instance ToResourceProperties EcsPropertiesProperty
instance Prelude.Eq EcsPropertiesProperty
instance Prelude.Show EcsPropertiesProperty
instance JSON.ToJSON EcsPropertiesProperty