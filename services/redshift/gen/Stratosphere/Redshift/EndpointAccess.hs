module Stratosphere.Redshift.EndpointAccess (
        EndpointAccess(..), mkEndpointAccess
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointAccess
  = EndpointAccess {clusterIdentifier :: (Value Prelude.Text),
                    endpointName :: (Value Prelude.Text),
                    resourceOwner :: (Prelude.Maybe (Value Prelude.Text)),
                    subnetGroupName :: (Value Prelude.Text),
                    vpcSecurityGroupIds :: (ValueList (Value Prelude.Text))}
mkEndpointAccess ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> ValueList (Value Prelude.Text) -> EndpointAccess
mkEndpointAccess
  clusterIdentifier
  endpointName
  subnetGroupName
  vpcSecurityGroupIds
  = EndpointAccess
      {clusterIdentifier = clusterIdentifier,
       endpointName = endpointName, subnetGroupName = subnetGroupName,
       vpcSecurityGroupIds = vpcSecurityGroupIds,
       resourceOwner = Prelude.Nothing}
instance ToResourceProperties EndpointAccess where
  toResourceProperties EndpointAccess {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EndpointAccess",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterIdentifier" JSON..= clusterIdentifier,
                            "EndpointName" JSON..= endpointName,
                            "SubnetGroupName" JSON..= subnetGroupName,
                            "VpcSecurityGroupIds" JSON..= vpcSecurityGroupIds]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceOwner" Prelude.<$> resourceOwner]))}
instance JSON.ToJSON EndpointAccess where
  toJSON EndpointAccess {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterIdentifier" JSON..= clusterIdentifier,
               "EndpointName" JSON..= endpointName,
               "SubnetGroupName" JSON..= subnetGroupName,
               "VpcSecurityGroupIds" JSON..= vpcSecurityGroupIds]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceOwner" Prelude.<$> resourceOwner])))
instance Property "ClusterIdentifier" EndpointAccess where
  type PropertyType "ClusterIdentifier" EndpointAccess = Value Prelude.Text
  set newValue EndpointAccess {..}
    = EndpointAccess {clusterIdentifier = newValue, ..}
instance Property "EndpointName" EndpointAccess where
  type PropertyType "EndpointName" EndpointAccess = Value Prelude.Text
  set newValue EndpointAccess {..}
    = EndpointAccess {endpointName = newValue, ..}
instance Property "ResourceOwner" EndpointAccess where
  type PropertyType "ResourceOwner" EndpointAccess = Value Prelude.Text
  set newValue EndpointAccess {..}
    = EndpointAccess {resourceOwner = Prelude.pure newValue, ..}
instance Property "SubnetGroupName" EndpointAccess where
  type PropertyType "SubnetGroupName" EndpointAccess = Value Prelude.Text
  set newValue EndpointAccess {..}
    = EndpointAccess {subnetGroupName = newValue, ..}
instance Property "VpcSecurityGroupIds" EndpointAccess where
  type PropertyType "VpcSecurityGroupIds" EndpointAccess = ValueList (Value Prelude.Text)
  set newValue EndpointAccess {..}
    = EndpointAccess {vpcSecurityGroupIds = newValue, ..}