module Stratosphere.QuickSight.VPCConnection.NetworkInterfaceProperty (
        NetworkInterfaceProperty(..), mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html>
    NetworkInterfaceProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html#cfn-quicksight-vpcconnection-networkinterface-availabilityzone>
                              availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html#cfn-quicksight-vpcconnection-networkinterface-errormessage>
                              errorMessage :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html#cfn-quicksight-vpcconnection-networkinterface-networkinterfaceid>
                              networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html#cfn-quicksight-vpcconnection-networkinterface-status>
                              status :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-vpcconnection-networkinterface.html#cfn-quicksight-vpcconnection-networkinterface-subnetid>
                              subnetId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceProperty :: NetworkInterfaceProperty
mkNetworkInterfaceProperty
  = NetworkInterfaceProperty
      {haddock_workaround_ = (), availabilityZone = Prelude.Nothing,
       errorMessage = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing, status = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::VPCConnection.NetworkInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "ErrorMessage" Prelude.<$> errorMessage,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "ErrorMessage" Prelude.<$> errorMessage,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "AvailabilityZone" NetworkInterfaceProperty where
  type PropertyType "AvailabilityZone" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "ErrorMessage" NetworkInterfaceProperty where
  type PropertyType "ErrorMessage" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {errorMessage = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "Status" NetworkInterfaceProperty where
  type PropertyType "Status" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {status = Prelude.pure newValue, ..}
instance Property "SubnetId" NetworkInterfaceProperty where
  type PropertyType "SubnetId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {subnetId = Prelude.pure newValue, ..}