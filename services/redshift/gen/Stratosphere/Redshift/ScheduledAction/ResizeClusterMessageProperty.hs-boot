module Stratosphere.Redshift.ScheduledAction.ResizeClusterMessageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResizeClusterMessageProperty :: Prelude.Type
instance ToResourceProperties ResizeClusterMessageProperty
instance Prelude.Eq ResizeClusterMessageProperty
instance Prelude.Show ResizeClusterMessageProperty
instance JSON.ToJSON ResizeClusterMessageProperty