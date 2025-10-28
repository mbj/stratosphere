module Stratosphere.GameLift.ContainerFleet.DeploymentConfigurationProperty (
        DeploymentConfigurationProperty(..),
        mkDeploymentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-deploymentconfiguration.html>
    DeploymentConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-deploymentconfiguration.html#cfn-gamelift-containerfleet-deploymentconfiguration-impairmentstrategy>
                                     impairmentStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-deploymentconfiguration.html#cfn-gamelift-containerfleet-deploymentconfiguration-minimumhealthypercentage>
                                     minimumHealthyPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-deploymentconfiguration.html#cfn-gamelift-containerfleet-deploymentconfiguration-protectionstrategy>
                                     protectionStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfigurationProperty ::
  DeploymentConfigurationProperty
mkDeploymentConfigurationProperty
  = DeploymentConfigurationProperty
      {haddock_workaround_ = (), impairmentStrategy = Prelude.Nothing,
       minimumHealthyPercentage = Prelude.Nothing,
       protectionStrategy = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigurationProperty where
  toResourceProperties DeploymentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.DeploymentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImpairmentStrategy" Prelude.<$> impairmentStrategy,
                            (JSON..=) "MinimumHealthyPercentage"
                              Prelude.<$> minimumHealthyPercentage,
                            (JSON..=) "ProtectionStrategy" Prelude.<$> protectionStrategy])}
instance JSON.ToJSON DeploymentConfigurationProperty where
  toJSON DeploymentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImpairmentStrategy" Prelude.<$> impairmentStrategy,
               (JSON..=) "MinimumHealthyPercentage"
                 Prelude.<$> minimumHealthyPercentage,
               (JSON..=) "ProtectionStrategy" Prelude.<$> protectionStrategy]))
instance Property "ImpairmentStrategy" DeploymentConfigurationProperty where
  type PropertyType "ImpairmentStrategy" DeploymentConfigurationProperty = Value Prelude.Text
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {impairmentStrategy = Prelude.pure newValue, ..}
instance Property "MinimumHealthyPercentage" DeploymentConfigurationProperty where
  type PropertyType "MinimumHealthyPercentage" DeploymentConfigurationProperty = Value Prelude.Integer
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {minimumHealthyPercentage = Prelude.pure newValue, ..}
instance Property "ProtectionStrategy" DeploymentConfigurationProperty where
  type PropertyType "ProtectionStrategy" DeploymentConfigurationProperty = Value Prelude.Text
  set newValue DeploymentConfigurationProperty {..}
    = DeploymentConfigurationProperty
        {protectionStrategy = Prelude.pure newValue, ..}