module Stratosphere.ECS.TaskDefinition.EphemeralStorageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EphemeralStorageProperty :: Prelude.Type
instance ToResourceProperties EphemeralStorageProperty
instance Prelude.Eq EphemeralStorageProperty
instance Prelude.Show EphemeralStorageProperty
instance JSON.ToJSON EphemeralStorageProperty