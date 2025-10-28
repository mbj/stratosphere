module Stratosphere.AppFlow.Connector (
        module Exports, Connector(..), mkConnector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Connector.ConnectorProvisioningConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Connector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connector.html>
    Connector {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connector.html#cfn-appflow-connector-connectorlabel>
               connectorLabel :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connector.html#cfn-appflow-connector-connectorprovisioningconfig>
               connectorProvisioningConfig :: ConnectorProvisioningConfigProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connector.html#cfn-appflow-connector-connectorprovisioningtype>
               connectorProvisioningType :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appflow-connector.html#cfn-appflow-connector-description>
               description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnector ::
  ConnectorProvisioningConfigProperty
  -> Value Prelude.Text -> Connector
mkConnector connectorProvisioningConfig connectorProvisioningType
  = Connector
      {haddock_workaround_ = (),
       connectorProvisioningConfig = connectorProvisioningConfig,
       connectorProvisioningType = connectorProvisioningType,
       connectorLabel = Prelude.Nothing, description = Prelude.Nothing}
instance ToResourceProperties Connector where
  toResourceProperties Connector {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Connector", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorProvisioningConfig" JSON..= connectorProvisioningConfig,
                            "ConnectorProvisioningType" JSON..= connectorProvisioningType]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorLabel" Prelude.<$> connectorLabel,
                               (JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON Connector where
  toJSON Connector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorProvisioningConfig" JSON..= connectorProvisioningConfig,
               "ConnectorProvisioningType" JSON..= connectorProvisioningType]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorLabel" Prelude.<$> connectorLabel,
                  (JSON..=) "Description" Prelude.<$> description])))
instance Property "ConnectorLabel" Connector where
  type PropertyType "ConnectorLabel" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {connectorLabel = Prelude.pure newValue, ..}
instance Property "ConnectorProvisioningConfig" Connector where
  type PropertyType "ConnectorProvisioningConfig" Connector = ConnectorProvisioningConfigProperty
  set newValue Connector {..}
    = Connector {connectorProvisioningConfig = newValue, ..}
instance Property "ConnectorProvisioningType" Connector where
  type PropertyType "ConnectorProvisioningType" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {connectorProvisioningType = newValue, ..}
instance Property "Description" Connector where
  type PropertyType "Description" Connector = Value Prelude.Text
  set newValue Connector {..}
    = Connector {description = Prelude.pure newValue, ..}