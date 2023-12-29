module Stratosphere.CodeDeploy.DeploymentGroup.DeploymentStyleProperty (
        DeploymentStyleProperty(..), mkDeploymentStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentStyleProperty
  = DeploymentStyleProperty {deploymentOption :: (Prelude.Maybe (Value Prelude.Text)),
                             deploymentType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentStyleProperty :: DeploymentStyleProperty
mkDeploymentStyleProperty
  = DeploymentStyleProperty
      {deploymentOption = Prelude.Nothing,
       deploymentType = Prelude.Nothing}
instance ToResourceProperties DeploymentStyleProperty where
  toResourceProperties DeploymentStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.DeploymentStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeploymentOption" Prelude.<$> deploymentOption,
                            (JSON..=) "DeploymentType" Prelude.<$> deploymentType])}
instance JSON.ToJSON DeploymentStyleProperty where
  toJSON DeploymentStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeploymentOption" Prelude.<$> deploymentOption,
               (JSON..=) "DeploymentType" Prelude.<$> deploymentType]))
instance Property "DeploymentOption" DeploymentStyleProperty where
  type PropertyType "DeploymentOption" DeploymentStyleProperty = Value Prelude.Text
  set newValue DeploymentStyleProperty {..}
    = DeploymentStyleProperty
        {deploymentOption = Prelude.pure newValue, ..}
instance Property "DeploymentType" DeploymentStyleProperty where
  type PropertyType "DeploymentType" DeploymentStyleProperty = Value Prelude.Text
  set newValue DeploymentStyleProperty {..}
    = DeploymentStyleProperty
        {deploymentType = Prelude.pure newValue, ..}