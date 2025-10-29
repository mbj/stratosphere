module Stratosphere.CodeDeploy.DeploymentGroup.GreenFleetProvisioningOptionProperty (
        GreenFleetProvisioningOptionProperty(..),
        mkGreenFleetProvisioningOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GreenFleetProvisioningOptionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-greenfleetprovisioningoption.html>
    GreenFleetProvisioningOptionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-greenfleetprovisioningoption.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-greenfleetprovisioningoption-action>
                                          action :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGreenFleetProvisioningOptionProperty ::
  GreenFleetProvisioningOptionProperty
mkGreenFleetProvisioningOptionProperty
  = GreenFleetProvisioningOptionProperty {action = Prelude.Nothing}
instance ToResourceProperties GreenFleetProvisioningOptionProperty where
  toResourceProperties GreenFleetProvisioningOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.GreenFleetProvisioningOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action])}
instance JSON.ToJSON GreenFleetProvisioningOptionProperty where
  toJSON GreenFleetProvisioningOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action]))
instance Property "Action" GreenFleetProvisioningOptionProperty where
  type PropertyType "Action" GreenFleetProvisioningOptionProperty = Value Prelude.Text
  set newValue GreenFleetProvisioningOptionProperty {}
    = GreenFleetProvisioningOptionProperty
        {action = Prelude.pure newValue, ..}