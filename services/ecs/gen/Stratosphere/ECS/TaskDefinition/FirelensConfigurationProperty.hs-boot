module Stratosphere.ECS.TaskDefinition.FirelensConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FirelensConfigurationProperty :: Prelude.Type
instance ToResourceProperties FirelensConfigurationProperty
instance JSON.ToJSON FirelensConfigurationProperty