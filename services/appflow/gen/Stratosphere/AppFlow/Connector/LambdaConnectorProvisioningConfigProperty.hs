module Stratosphere.AppFlow.Connector.LambdaConnectorProvisioningConfigProperty (
        LambdaConnectorProvisioningConfigProperty(..),
        mkLambdaConnectorProvisioningConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaConnectorProvisioningConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connector-lambdaconnectorprovisioningconfig.html>
    LambdaConnectorProvisioningConfigProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connector-lambdaconnectorprovisioningconfig.html#cfn-appflow-connector-lambdaconnectorprovisioningconfig-lambdaarn>
                                               lambdaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaConnectorProvisioningConfigProperty ::
  Value Prelude.Text -> LambdaConnectorProvisioningConfigProperty
mkLambdaConnectorProvisioningConfigProperty lambdaArn
  = LambdaConnectorProvisioningConfigProperty
      {haddock_workaround_ = (), lambdaArn = lambdaArn}
instance ToResourceProperties LambdaConnectorProvisioningConfigProperty where
  toResourceProperties LambdaConnectorProvisioningConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Connector.LambdaConnectorProvisioningConfig",
         supportsTags = Prelude.False,
         properties = ["LambdaArn" JSON..= lambdaArn]}
instance JSON.ToJSON LambdaConnectorProvisioningConfigProperty where
  toJSON LambdaConnectorProvisioningConfigProperty {..}
    = JSON.object ["LambdaArn" JSON..= lambdaArn]
instance Property "LambdaArn" LambdaConnectorProvisioningConfigProperty where
  type PropertyType "LambdaArn" LambdaConnectorProvisioningConfigProperty = Value Prelude.Text
  set newValue LambdaConnectorProvisioningConfigProperty {..}
    = LambdaConnectorProvisioningConfigProperty
        {lambdaArn = newValue, ..}