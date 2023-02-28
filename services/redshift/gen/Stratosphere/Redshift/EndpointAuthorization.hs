module Stratosphere.Redshift.EndpointAuthorization (
        EndpointAuthorization(..), mkEndpointAuthorization
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointAuthorization
  = EndpointAuthorization {account :: (Value Prelude.Text),
                           clusterIdentifier :: (Value Prelude.Text),
                           force :: (Prelude.Maybe (Value Prelude.Bool)),
                           vpcIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkEndpointAuthorization ::
  Value Prelude.Text -> Value Prelude.Text -> EndpointAuthorization
mkEndpointAuthorization account clusterIdentifier
  = EndpointAuthorization
      {account = account, clusterIdentifier = clusterIdentifier,
       force = Prelude.Nothing, vpcIds = Prelude.Nothing}
instance ToResourceProperties EndpointAuthorization where
  toResourceProperties EndpointAuthorization {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EndpointAuthorization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Account" JSON..= account,
                            "ClusterIdentifier" JSON..= clusterIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Force" Prelude.<$> force,
                               (JSON..=) "VpcIds" Prelude.<$> vpcIds]))}
instance JSON.ToJSON EndpointAuthorization where
  toJSON EndpointAuthorization {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Account" JSON..= account,
               "ClusterIdentifier" JSON..= clusterIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Force" Prelude.<$> force,
                  (JSON..=) "VpcIds" Prelude.<$> vpcIds])))
instance Property "Account" EndpointAuthorization where
  type PropertyType "Account" EndpointAuthorization = Value Prelude.Text
  set newValue EndpointAuthorization {..}
    = EndpointAuthorization {account = newValue, ..}
instance Property "ClusterIdentifier" EndpointAuthorization where
  type PropertyType "ClusterIdentifier" EndpointAuthorization = Value Prelude.Text
  set newValue EndpointAuthorization {..}
    = EndpointAuthorization {clusterIdentifier = newValue, ..}
instance Property "Force" EndpointAuthorization where
  type PropertyType "Force" EndpointAuthorization = Value Prelude.Bool
  set newValue EndpointAuthorization {..}
    = EndpointAuthorization {force = Prelude.pure newValue, ..}
instance Property "VpcIds" EndpointAuthorization where
  type PropertyType "VpcIds" EndpointAuthorization = ValueList Prelude.Text
  set newValue EndpointAuthorization {..}
    = EndpointAuthorization {vpcIds = Prelude.pure newValue, ..}