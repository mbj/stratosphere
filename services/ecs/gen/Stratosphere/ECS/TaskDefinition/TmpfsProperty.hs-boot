module Stratosphere.ECS.TaskDefinition.TmpfsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TmpfsProperty :: Prelude.Type
instance ToResourceProperties TmpfsProperty
instance JSON.ToJSON TmpfsProperty