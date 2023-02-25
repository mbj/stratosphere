module Stratosphere.CodeDeploy.DeploymentGroup.TrafficRouteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TrafficRouteProperty :: Prelude.Type
instance ToResourceProperties TrafficRouteProperty
instance JSON.ToJSON TrafficRouteProperty