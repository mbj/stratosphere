module Stratosphere.RDS.DBProxyEndpoint (
        module Exports, DBProxyEndpoint(..), mkDBProxyEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBProxyEndpoint.TagFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DBProxyEndpoint
  = DBProxyEndpoint {dBProxyEndpointName :: (Value Prelude.Text),
                     dBProxyName :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [TagFormatProperty]),
                     vpcSecurityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                     vpcSubnetIds :: (ValueList (Value Prelude.Text))}
mkDBProxyEndpoint ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList (Value Prelude.Text) -> DBProxyEndpoint
mkDBProxyEndpoint dBProxyEndpointName dBProxyName vpcSubnetIds
  = DBProxyEndpoint
      {dBProxyEndpointName = dBProxyEndpointName,
       dBProxyName = dBProxyName, vpcSubnetIds = vpcSubnetIds,
       tags = Prelude.Nothing, vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties DBProxyEndpoint where
  toResourceProperties DBProxyEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxyEndpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DBProxyEndpointName" JSON..= dBProxyEndpointName,
                            "DBProxyName" JSON..= dBProxyName,
                            "VpcSubnetIds" JSON..= vpcSubnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON DBProxyEndpoint where
  toJSON DBProxyEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DBProxyEndpointName" JSON..= dBProxyEndpointName,
               "DBProxyName" JSON..= dBProxyName,
               "VpcSubnetIds" JSON..= vpcSubnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "DBProxyEndpointName" DBProxyEndpoint where
  type PropertyType "DBProxyEndpointName" DBProxyEndpoint = Value Prelude.Text
  set newValue DBProxyEndpoint {..}
    = DBProxyEndpoint {dBProxyEndpointName = newValue, ..}
instance Property "DBProxyName" DBProxyEndpoint where
  type PropertyType "DBProxyName" DBProxyEndpoint = Value Prelude.Text
  set newValue DBProxyEndpoint {..}
    = DBProxyEndpoint {dBProxyName = newValue, ..}
instance Property "Tags" DBProxyEndpoint where
  type PropertyType "Tags" DBProxyEndpoint = [TagFormatProperty]
  set newValue DBProxyEndpoint {..}
    = DBProxyEndpoint {tags = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" DBProxyEndpoint where
  type PropertyType "VpcSecurityGroupIds" DBProxyEndpoint = ValueList (Value Prelude.Text)
  set newValue DBProxyEndpoint {..}
    = DBProxyEndpoint {vpcSecurityGroupIds = Prelude.pure newValue, ..}
instance Property "VpcSubnetIds" DBProxyEndpoint where
  type PropertyType "VpcSubnetIds" DBProxyEndpoint = ValueList (Value Prelude.Text)
  set newValue DBProxyEndpoint {..}
    = DBProxyEndpoint {vpcSubnetIds = newValue, ..}