module Stratosphere.CodeDeploy.DeploymentGroup.DeploymentReadyOptionProperty (
        DeploymentReadyOptionProperty(..), mkDeploymentReadyOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentReadyOptionProperty
  = DeploymentReadyOptionProperty {actionOnTimeout :: (Prelude.Maybe (Value Prelude.Text)),
                                   waitTimeInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
mkDeploymentReadyOptionProperty :: DeploymentReadyOptionProperty
mkDeploymentReadyOptionProperty
  = DeploymentReadyOptionProperty
      {actionOnTimeout = Prelude.Nothing,
       waitTimeInMinutes = Prelude.Nothing}
instance ToResourceProperties DeploymentReadyOptionProperty where
  toResourceProperties DeploymentReadyOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.DeploymentReadyOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActionOnTimeout" Prelude.<$> actionOnTimeout,
                            (JSON..=) "WaitTimeInMinutes" Prelude.<$> waitTimeInMinutes])}
instance JSON.ToJSON DeploymentReadyOptionProperty where
  toJSON DeploymentReadyOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActionOnTimeout" Prelude.<$> actionOnTimeout,
               (JSON..=) "WaitTimeInMinutes" Prelude.<$> waitTimeInMinutes]))
instance Property "ActionOnTimeout" DeploymentReadyOptionProperty where
  type PropertyType "ActionOnTimeout" DeploymentReadyOptionProperty = Value Prelude.Text
  set newValue DeploymentReadyOptionProperty {..}
    = DeploymentReadyOptionProperty
        {actionOnTimeout = Prelude.pure newValue, ..}
instance Property "WaitTimeInMinutes" DeploymentReadyOptionProperty where
  type PropertyType "WaitTimeInMinutes" DeploymentReadyOptionProperty = Value Prelude.Integer
  set newValue DeploymentReadyOptionProperty {..}
    = DeploymentReadyOptionProperty
        {waitTimeInMinutes = Prelude.pure newValue, ..}