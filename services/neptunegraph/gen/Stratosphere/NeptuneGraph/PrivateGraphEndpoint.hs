module Stratosphere.NeptuneGraph.PrivateGraphEndpoint (
        PrivateGraphEndpoint(..), mkPrivateGraphEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateGraphEndpoint
  = PrivateGraphEndpoint {graphIdentifier :: (Value Prelude.Text),
                          securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                          subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                          vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateGraphEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> PrivateGraphEndpoint
mkPrivateGraphEndpoint graphIdentifier vpcId
  = PrivateGraphEndpoint
      {graphIdentifier = graphIdentifier, vpcId = vpcId,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties PrivateGraphEndpoint where
  toResourceProperties PrivateGraphEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::NeptuneGraph::PrivateGraphEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GraphIdentifier" JSON..= graphIdentifier, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))}
instance JSON.ToJSON PrivateGraphEndpoint where
  toJSON PrivateGraphEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GraphIdentifier" JSON..= graphIdentifier, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds])))
instance Property "GraphIdentifier" PrivateGraphEndpoint where
  type PropertyType "GraphIdentifier" PrivateGraphEndpoint = Value Prelude.Text
  set newValue PrivateGraphEndpoint {..}
    = PrivateGraphEndpoint {graphIdentifier = newValue, ..}
instance Property "SecurityGroupIds" PrivateGraphEndpoint where
  type PropertyType "SecurityGroupIds" PrivateGraphEndpoint = ValueList Prelude.Text
  set newValue PrivateGraphEndpoint {..}
    = PrivateGraphEndpoint
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" PrivateGraphEndpoint where
  type PropertyType "SubnetIds" PrivateGraphEndpoint = ValueList Prelude.Text
  set newValue PrivateGraphEndpoint {..}
    = PrivateGraphEndpoint {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcId" PrivateGraphEndpoint where
  type PropertyType "VpcId" PrivateGraphEndpoint = Value Prelude.Text
  set newValue PrivateGraphEndpoint {..}
    = PrivateGraphEndpoint {vpcId = newValue, ..}