module Stratosphere.ECS.TaskDefinition.MountPointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MountPointProperty :: Prelude.Type
instance ToResourceProperties MountPointProperty
instance Prelude.Eq MountPointProperty
instance Prelude.Show MountPointProperty
instance JSON.ToJSON MountPointProperty