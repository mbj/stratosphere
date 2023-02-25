module Stratosphere.ECS.TaskDefinition.VolumeFromProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VolumeFromProperty :: Prelude.Type
instance ToResourceProperties VolumeFromProperty
instance JSON.ToJSON VolumeFromProperty