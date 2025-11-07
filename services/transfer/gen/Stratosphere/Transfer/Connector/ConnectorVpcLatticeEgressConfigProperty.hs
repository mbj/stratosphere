module Stratosphere.Transfer.Connector.ConnectorVpcLatticeEgressConfigProperty (
        ConnectorVpcLatticeEgressConfigProperty(..),
        mkConnectorVpcLatticeEgressConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorVpcLatticeEgressConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectorvpclatticeegressconfig.html>
    ConnectorVpcLatticeEgressConfigProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectorvpclatticeegressconfig.html#cfn-transfer-connector-connectorvpclatticeegressconfig-portnumber>
                                             portNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectorvpclatticeegressconfig.html#cfn-transfer-connector-connectorvpclatticeegressconfig-resourceconfigurationarn>
                                             resourceConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorVpcLatticeEgressConfigProperty ::
  Value Prelude.Text -> ConnectorVpcLatticeEgressConfigProperty
mkConnectorVpcLatticeEgressConfigProperty resourceConfigurationArn
  = ConnectorVpcLatticeEgressConfigProperty
      {haddock_workaround_ = (),
       resourceConfigurationArn = resourceConfigurationArn,
       portNumber = Prelude.Nothing}
instance ToResourceProperties ConnectorVpcLatticeEgressConfigProperty where
  toResourceProperties ConnectorVpcLatticeEgressConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector.ConnectorVpcLatticeEgressConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceConfigurationArn" JSON..= resourceConfigurationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "PortNumber" Prelude.<$> portNumber]))}
instance JSON.ToJSON ConnectorVpcLatticeEgressConfigProperty where
  toJSON ConnectorVpcLatticeEgressConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceConfigurationArn" JSON..= resourceConfigurationArn]
              (Prelude.catMaybes
                 [(JSON..=) "PortNumber" Prelude.<$> portNumber])))
instance Property "PortNumber" ConnectorVpcLatticeEgressConfigProperty where
  type PropertyType "PortNumber" ConnectorVpcLatticeEgressConfigProperty = Value Prelude.Integer
  set newValue ConnectorVpcLatticeEgressConfigProperty {..}
    = ConnectorVpcLatticeEgressConfigProperty
        {portNumber = Prelude.pure newValue, ..}
instance Property "ResourceConfigurationArn" ConnectorVpcLatticeEgressConfigProperty where
  type PropertyType "ResourceConfigurationArn" ConnectorVpcLatticeEgressConfigProperty = Value Prelude.Text
  set newValue ConnectorVpcLatticeEgressConfigProperty {..}
    = ConnectorVpcLatticeEgressConfigProperty
        {resourceConfigurationArn = newValue, ..}