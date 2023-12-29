module Stratosphere.Batch.JobDefinition.MountPointsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MountPointsProperty :: Prelude.Type
instance ToResourceProperties MountPointsProperty
instance Prelude.Eq MountPointsProperty
instance Prelude.Show MountPointsProperty
instance JSON.ToJSON MountPointsProperty