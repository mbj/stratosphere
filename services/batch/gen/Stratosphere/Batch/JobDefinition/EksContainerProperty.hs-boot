module Stratosphere.Batch.JobDefinition.EksContainerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksContainerProperty :: Prelude.Type
instance ToResourceProperties EksContainerProperty
instance Prelude.Eq EksContainerProperty
instance Prelude.Show EksContainerProperty
instance JSON.ToJSON EksContainerProperty