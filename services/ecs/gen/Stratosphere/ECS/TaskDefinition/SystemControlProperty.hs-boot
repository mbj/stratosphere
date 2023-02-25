module Stratosphere.ECS.TaskDefinition.SystemControlProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SystemControlProperty :: Prelude.Type
instance ToResourceProperties SystemControlProperty
instance JSON.ToJSON SystemControlProperty