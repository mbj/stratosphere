module Stratosphere.AppFlow.Connector.ConnectorProvisioningConfigProperty (
        module Exports, ConnectorProvisioningConfigProperty(..),
        mkConnectorProvisioningConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Connector.LambdaConnectorProvisioningConfigProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorProvisioningConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connector-connectorprovisioningconfig.html>
    ConnectorProvisioningConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connector-connectorprovisioningconfig.html#cfn-appflow-connector-connectorprovisioningconfig-lambda>
                                         lambda :: (Prelude.Maybe LambdaConnectorProvisioningConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorProvisioningConfigProperty ::
  ConnectorProvisioningConfigProperty
mkConnectorProvisioningConfigProperty
  = ConnectorProvisioningConfigProperty
      {haddock_workaround_ = (), lambda = Prelude.Nothing}
instance ToResourceProperties ConnectorProvisioningConfigProperty where
  toResourceProperties ConnectorProvisioningConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Connector.ConnectorProvisioningConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Lambda" Prelude.<$> lambda])}
instance JSON.ToJSON ConnectorProvisioningConfigProperty where
  toJSON ConnectorProvisioningConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Lambda" Prelude.<$> lambda]))
instance Property "Lambda" ConnectorProvisioningConfigProperty where
  type PropertyType "Lambda" ConnectorProvisioningConfigProperty = LambdaConnectorProvisioningConfigProperty
  set newValue ConnectorProvisioningConfigProperty {..}
    = ConnectorProvisioningConfigProperty
        {lambda = Prelude.pure newValue, ..}