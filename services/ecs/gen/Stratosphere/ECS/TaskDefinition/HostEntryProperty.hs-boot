module Stratosphere.ECS.TaskDefinition.HostEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HostEntryProperty :: Prelude.Type
instance ToResourceProperties HostEntryProperty
instance JSON.ToJSON HostEntryProperty