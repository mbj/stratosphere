module Stratosphere.PCS.Cluster.EndpointProperty (
        EndpointProperty(..), mkEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html>
    EndpointProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html#cfn-pcs-cluster-endpoint-ipv6address>
                      ipv6Address :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html#cfn-pcs-cluster-endpoint-port>
                      port :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html#cfn-pcs-cluster-endpoint-privateipaddress>
                      privateIpAddress :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html#cfn-pcs-cluster-endpoint-publicipaddress>
                      publicIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-endpoint.html#cfn-pcs-cluster-endpoint-type>
                      type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EndpointProperty
mkEndpointProperty port privateIpAddress type'
  = EndpointProperty
      {haddock_workaround_ = (), port = port,
       privateIpAddress = privateIpAddress, type' = type',
       ipv6Address = Prelude.Nothing, publicIpAddress = Prelude.Nothing}
instance ToResourceProperties EndpointProperty where
  toResourceProperties EndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.Endpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "PrivateIpAddress" JSON..= privateIpAddress,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Ipv6Address" Prelude.<$> ipv6Address,
                               (JSON..=) "PublicIpAddress" Prelude.<$> publicIpAddress]))}
instance JSON.ToJSON EndpointProperty where
  toJSON EndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "PrivateIpAddress" JSON..= privateIpAddress,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Ipv6Address" Prelude.<$> ipv6Address,
                  (JSON..=) "PublicIpAddress" Prelude.<$> publicIpAddress])))
instance Property "Ipv6Address" EndpointProperty where
  type PropertyType "Ipv6Address" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {ipv6Address = Prelude.pure newValue, ..}
instance Property "Port" EndpointProperty where
  type PropertyType "Port" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {port = newValue, ..}
instance Property "PrivateIpAddress" EndpointProperty where
  type PropertyType "PrivateIpAddress" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {privateIpAddress = newValue, ..}
instance Property "PublicIpAddress" EndpointProperty where
  type PropertyType "PublicIpAddress" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {publicIpAddress = Prelude.pure newValue, ..}
instance Property "Type" EndpointProperty where
  type PropertyType "Type" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {type' = newValue, ..}