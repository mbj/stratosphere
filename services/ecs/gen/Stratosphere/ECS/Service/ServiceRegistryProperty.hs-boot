module Stratosphere.ECS.Service.ServiceRegistryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ServiceRegistryProperty :: Prelude.Type
instance ToResourceProperties ServiceRegistryProperty
instance JSON.ToJSON ServiceRegistryProperty