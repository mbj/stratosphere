module Stratosphere.DataSync.LocationFSxONTAP (
        module Exports, LocationFSxONTAP(..), mkLocationFSxONTAP
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxONTAP.ProtocolProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationFSxONTAP
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html>
    LocationFSxONTAP {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html#cfn-datasync-locationfsxontap-protocol>
                      protocol :: (Prelude.Maybe ProtocolProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html#cfn-datasync-locationfsxontap-securitygrouparns>
                      securityGroupArns :: (ValueList Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html#cfn-datasync-locationfsxontap-storagevirtualmachinearn>
                      storageVirtualMachineArn :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html#cfn-datasync-locationfsxontap-subdirectory>
                      subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datasync-locationfsxontap.html#cfn-datasync-locationfsxontap-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationFSxONTAP ::
  ValueList Prelude.Text -> Value Prelude.Text -> LocationFSxONTAP
mkLocationFSxONTAP securityGroupArns storageVirtualMachineArn
  = LocationFSxONTAP
      {securityGroupArns = securityGroupArns,
       storageVirtualMachineArn = storageVirtualMachineArn,
       protocol = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationFSxONTAP where
  toResourceProperties LocationFSxONTAP {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupArns" JSON..= securityGroupArns,
                            "StorageVirtualMachineArn" JSON..= storageVirtualMachineArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationFSxONTAP where
  toJSON LocationFSxONTAP {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupArns" JSON..= securityGroupArns,
               "StorageVirtualMachineArn" JSON..= storageVirtualMachineArn]
              (Prelude.catMaybes
                 [(JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Protocol" LocationFSxONTAP where
  type PropertyType "Protocol" LocationFSxONTAP = ProtocolProperty
  set newValue LocationFSxONTAP {..}
    = LocationFSxONTAP {protocol = Prelude.pure newValue, ..}
instance Property "SecurityGroupArns" LocationFSxONTAP where
  type PropertyType "SecurityGroupArns" LocationFSxONTAP = ValueList Prelude.Text
  set newValue LocationFSxONTAP {..}
    = LocationFSxONTAP {securityGroupArns = newValue, ..}
instance Property "StorageVirtualMachineArn" LocationFSxONTAP where
  type PropertyType "StorageVirtualMachineArn" LocationFSxONTAP = Value Prelude.Text
  set newValue LocationFSxONTAP {..}
    = LocationFSxONTAP {storageVirtualMachineArn = newValue, ..}
instance Property "Subdirectory" LocationFSxONTAP where
  type PropertyType "Subdirectory" LocationFSxONTAP = Value Prelude.Text
  set newValue LocationFSxONTAP {..}
    = LocationFSxONTAP {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationFSxONTAP where
  type PropertyType "Tags" LocationFSxONTAP = [Tag]
  set newValue LocationFSxONTAP {..}
    = LocationFSxONTAP {tags = Prelude.pure newValue, ..}