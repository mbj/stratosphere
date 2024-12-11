module Stratosphere.MediaConnect.Flow.VpcInterfaceProperty (
        VpcInterfaceProperty(..), mkVpcInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcInterfaceProperty
  = VpcInterfaceProperty {name :: (Value Prelude.Text),
                          networkInterfaceIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                          networkInterfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                          roleArn :: (Value Prelude.Text),
                          securityGroupIds :: (ValueList Prelude.Text),
                          subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcInterfaceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text
        -> Value Prelude.Text -> VpcInterfaceProperty
mkVpcInterfaceProperty name roleArn securityGroupIds subnetId
  = VpcInterfaceProperty
      {name = name, roleArn = roleArn,
       securityGroupIds = securityGroupIds, subnetId = subnetId,
       networkInterfaceIds = Prelude.Nothing,
       networkInterfaceType = Prelude.Nothing}
instance ToResourceProperties VpcInterfaceProperty where
  toResourceProperties VpcInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.VpcInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
                            "SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "NetworkInterfaceIds" Prelude.<$> networkInterfaceIds,
                               (JSON..=) "NetworkInterfaceType"
                                 Prelude.<$> networkInterfaceType]))}
instance JSON.ToJSON VpcInterfaceProperty where
  toJSON VpcInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoleArn" JSON..= roleArn,
               "SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "NetworkInterfaceIds" Prelude.<$> networkInterfaceIds,
                  (JSON..=) "NetworkInterfaceType"
                    Prelude.<$> networkInterfaceType])))
instance Property "Name" VpcInterfaceProperty where
  type PropertyType "Name" VpcInterfaceProperty = Value Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty {name = newValue, ..}
instance Property "NetworkInterfaceIds" VpcInterfaceProperty where
  type PropertyType "NetworkInterfaceIds" VpcInterfaceProperty = ValueList Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty
        {networkInterfaceIds = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceType" VpcInterfaceProperty where
  type PropertyType "NetworkInterfaceType" VpcInterfaceProperty = Value Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty
        {networkInterfaceType = Prelude.pure newValue, ..}
instance Property "RoleArn" VpcInterfaceProperty where
  type PropertyType "RoleArn" VpcInterfaceProperty = Value Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty {roleArn = newValue, ..}
instance Property "SecurityGroupIds" VpcInterfaceProperty where
  type PropertyType "SecurityGroupIds" VpcInterfaceProperty = ValueList Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty {securityGroupIds = newValue, ..}
instance Property "SubnetId" VpcInterfaceProperty where
  type PropertyType "SubnetId" VpcInterfaceProperty = Value Prelude.Text
  set newValue VpcInterfaceProperty {..}
    = VpcInterfaceProperty {subnetId = newValue, ..}