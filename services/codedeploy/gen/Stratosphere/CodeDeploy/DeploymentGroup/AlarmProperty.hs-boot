module Stratosphere.CodeDeploy.DeploymentGroup.AlarmProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmProperty :: Prelude.Type
instance ToResourceProperties AlarmProperty
instance JSON.ToJSON AlarmProperty