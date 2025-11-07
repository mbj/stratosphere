module Stratosphere.Transfer.Connector.ConnectorEgressConfigProperty (
        module Exports, ConnectorEgressConfigProperty(..),
        mkConnectorEgressConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Connector.ConnectorVpcLatticeEgressConfigProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorEgressConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectoregressconfig.html>
    ConnectorEgressConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectoregressconfig.html#cfn-transfer-connector-connectoregressconfig-vpclattice>
                                   vpcLattice :: ConnectorVpcLatticeEgressConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorEgressConfigProperty ::
  ConnectorVpcLatticeEgressConfigProperty
  -> ConnectorEgressConfigProperty
mkConnectorEgressConfigProperty vpcLattice
  = ConnectorEgressConfigProperty
      {haddock_workaround_ = (), vpcLattice = vpcLattice}
instance ToResourceProperties ConnectorEgressConfigProperty where
  toResourceProperties ConnectorEgressConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector.ConnectorEgressConfig",
         supportsTags = Prelude.False,
         properties = ["VpcLattice" JSON..= vpcLattice]}
instance JSON.ToJSON ConnectorEgressConfigProperty where
  toJSON ConnectorEgressConfigProperty {..}
    = JSON.object ["VpcLattice" JSON..= vpcLattice]
instance Property "VpcLattice" ConnectorEgressConfigProperty where
  type PropertyType "VpcLattice" ConnectorEgressConfigProperty = ConnectorVpcLatticeEgressConfigProperty
  set newValue ConnectorEgressConfigProperty {..}
    = ConnectorEgressConfigProperty {vpcLattice = newValue, ..}