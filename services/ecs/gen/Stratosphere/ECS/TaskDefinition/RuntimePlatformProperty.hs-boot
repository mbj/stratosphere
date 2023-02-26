module Stratosphere.ECS.TaskDefinition.RuntimePlatformProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuntimePlatformProperty :: Prelude.Type
instance ToResourceProperties RuntimePlatformProperty
instance JSON.ToJSON RuntimePlatformProperty