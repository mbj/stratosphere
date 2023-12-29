module Stratosphere.Batch.JobDefinition.EksEmptyDirProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksEmptyDirProperty :: Prelude.Type
instance ToResourceProperties EksEmptyDirProperty
instance Prelude.Eq EksEmptyDirProperty
instance Prelude.Show EksEmptyDirProperty
instance JSON.ToJSON EksEmptyDirProperty