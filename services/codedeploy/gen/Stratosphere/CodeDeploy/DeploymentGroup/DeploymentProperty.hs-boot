module Stratosphere.CodeDeploy.DeploymentGroup.DeploymentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeploymentProperty :: Prelude.Type
instance ToResourceProperties DeploymentProperty
instance Prelude.Eq DeploymentProperty
instance Prelude.Show DeploymentProperty
instance JSON.ToJSON DeploymentProperty