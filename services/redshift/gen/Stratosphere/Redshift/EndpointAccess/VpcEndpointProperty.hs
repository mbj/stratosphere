module Stratosphere.Redshift.EndpointAccess.VpcEndpointProperty (
        module Exports, VpcEndpointProperty(..), mkVpcEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Redshift.EndpointAccess.NetworkInterfaceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcendpoint.html>
    VpcEndpointProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcendpoint.html#cfn-redshift-endpointaccess-vpcendpoint-networkinterfaces>
                         networkInterfaces :: (Prelude.Maybe [NetworkInterfaceProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcendpoint.html#cfn-redshift-endpointaccess-vpcendpoint-vpcendpointid>
                         vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcendpoint.html#cfn-redshift-endpointaccess-vpcendpoint-vpcid>
                         vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcEndpointProperty :: VpcEndpointProperty
mkVpcEndpointProperty
  = VpcEndpointProperty
      {haddock_workaround_ = (), networkInterfaces = Prelude.Nothing,
       vpcEndpointId = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties VpcEndpointProperty where
  toResourceProperties VpcEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EndpointAccess.VpcEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                            (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON VpcEndpointProperty where
  toJSON VpcEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
               (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "NetworkInterfaces" VpcEndpointProperty where
  type PropertyType "NetworkInterfaces" VpcEndpointProperty = [NetworkInterfaceProperty]
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty
        {networkInterfaces = Prelude.pure newValue, ..}
instance Property "VpcEndpointId" VpcEndpointProperty where
  type PropertyType "VpcEndpointId" VpcEndpointProperty = Value Prelude.Text
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty {vpcEndpointId = Prelude.pure newValue, ..}
instance Property "VpcId" VpcEndpointProperty where
  type PropertyType "VpcId" VpcEndpointProperty = Value Prelude.Text
  set newValue VpcEndpointProperty {..}
    = VpcEndpointProperty {vpcId = Prelude.pure newValue, ..}