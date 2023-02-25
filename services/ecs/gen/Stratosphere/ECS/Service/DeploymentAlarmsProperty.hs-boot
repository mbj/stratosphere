module Stratosphere.ECS.Service.DeploymentAlarmsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeploymentAlarmsProperty :: Prelude.Type
instance ToResourceProperties DeploymentAlarmsProperty
instance JSON.ToJSON DeploymentAlarmsProperty