module Stratosphere.ECS.Service.DeploymentControllerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeploymentControllerProperty :: Prelude.Type
instance ToResourceProperties DeploymentControllerProperty
instance Prelude.Eq DeploymentControllerProperty
instance Prelude.Show DeploymentControllerProperty
instance JSON.ToJSON DeploymentControllerProperty