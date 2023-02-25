module Stratosphere.ECS.TaskSet.ScaleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScaleProperty :: Prelude.Type
instance ToResourceProperties ScaleProperty
instance JSON.ToJSON ScaleProperty