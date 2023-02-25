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
  = LambdaConnectorProvisioningConfigProperty {lambdaArn :: (Value Prelude.Text)}
mkLambdaConnectorProvisioningConfigProperty ::
  Value Prelude.Text -> LambdaConnectorProvisioningConfigProperty
mkLambdaConnectorProvisioningConfigProperty lambdaArn
  = LambdaConnectorProvisioningConfigProperty {lambdaArn = lambdaArn}
instance ToResourceProperties LambdaConnectorProvisioningConfigProperty where
  toResourceProperties LambdaConnectorProvisioningConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Connector.LambdaConnectorProvisioningConfig",
         properties = ["LambdaArn" JSON..= lambdaArn]}
instance JSON.ToJSON LambdaConnectorProvisioningConfigProperty where
  toJSON LambdaConnectorProvisioningConfigProperty {..}
    = JSON.object ["LambdaArn" JSON..= lambdaArn]
instance Property "LambdaArn" LambdaConnectorProvisioningConfigProperty where
  type PropertyType "LambdaArn" LambdaConnectorProvisioningConfigProperty = Value Prelude.Text
  set newValue LambdaConnectorProvisioningConfigProperty {}
    = LambdaConnectorProvisioningConfigProperty
        {lambdaArn = newValue, ..}