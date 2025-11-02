module Stratosphere.MemoryDB.Cluster.EndpointProperty (
        EndpointProperty(..), mkEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-cluster-endpoint.html>
    EndpointProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-cluster-endpoint.html#cfn-memorydb-cluster-endpoint-address>
                      address :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-memorydb-cluster-endpoint.html#cfn-memorydb-cluster-endpoint-port>
                      port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointProperty :: EndpointProperty
mkEndpointProperty
  = EndpointProperty
      {haddock_workaround_ = (), address = Prelude.Nothing,
       port = Prelude.Nothing}
instance ToResourceProperties EndpointProperty where
  toResourceProperties EndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::Cluster.Endpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Port" Prelude.<$> port])}
instance JSON.ToJSON EndpointProperty where
  toJSON EndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Port" Prelude.<$> port]))
instance Property "Address" EndpointProperty where
  type PropertyType "Address" EndpointProperty = Value Prelude.Text
  set newValue EndpointProperty {..}
    = EndpointProperty {address = Prelude.pure newValue, ..}
instance Property "Port" EndpointProperty where
  type PropertyType "Port" EndpointProperty = Value Prelude.Integer
  set newValue EndpointProperty {..}
    = EndpointProperty {port = Prelude.pure newValue, ..}