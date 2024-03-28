module Stratosphere.SageMaker.Endpoint.DeploymentConfigProperty (
        module Exports, DeploymentConfigProperty(..),
        mkDeploymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.AutoRollbackConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.BlueGreenUpdatePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.RollingUpdatePolicyProperty as Exports
import Stratosphere.ResourceProperties
data DeploymentConfigProperty
  = DeploymentConfigProperty {autoRollbackConfiguration :: (Prelude.Maybe AutoRollbackConfigProperty),
                              blueGreenUpdatePolicy :: (Prelude.Maybe BlueGreenUpdatePolicyProperty),
                              rollingUpdatePolicy :: (Prelude.Maybe RollingUpdatePolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfigProperty :: DeploymentConfigProperty
mkDeploymentConfigProperty
  = DeploymentConfigProperty
      {autoRollbackConfiguration = Prelude.Nothing,
       blueGreenUpdatePolicy = Prelude.Nothing,
       rollingUpdatePolicy = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigProperty where
  toResourceProperties DeploymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.DeploymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoRollbackConfiguration"
                              Prelude.<$> autoRollbackConfiguration,
                            (JSON..=) "BlueGreenUpdatePolicy"
                              Prelude.<$> blueGreenUpdatePolicy,
                            (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy])}
instance JSON.ToJSON DeploymentConfigProperty where
  toJSON DeploymentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoRollbackConfiguration"
                 Prelude.<$> autoRollbackConfiguration,
               (JSON..=) "BlueGreenUpdatePolicy"
                 Prelude.<$> blueGreenUpdatePolicy,
               (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy]))
instance Property "AutoRollbackConfiguration" DeploymentConfigProperty where
  type PropertyType "AutoRollbackConfiguration" DeploymentConfigProperty = AutoRollbackConfigProperty
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {autoRollbackConfiguration = Prelude.pure newValue, ..}
instance Property "BlueGreenUpdatePolicy" DeploymentConfigProperty where
  type PropertyType "BlueGreenUpdatePolicy" DeploymentConfigProperty = BlueGreenUpdatePolicyProperty
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {blueGreenUpdatePolicy = Prelude.pure newValue, ..}
instance Property "RollingUpdatePolicy" DeploymentConfigProperty where
  type PropertyType "RollingUpdatePolicy" DeploymentConfigProperty = RollingUpdatePolicyProperty
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {rollingUpdatePolicy = Prelude.pure newValue, ..}