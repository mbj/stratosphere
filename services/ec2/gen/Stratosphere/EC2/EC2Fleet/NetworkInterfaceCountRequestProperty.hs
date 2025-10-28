module Stratosphere.EC2.EC2Fleet.NetworkInterfaceCountRequestProperty (
        NetworkInterfaceCountRequestProperty(..),
        mkNetworkInterfaceCountRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceCountRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-networkinterfacecountrequest.html>
    NetworkInterfaceCountRequestProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-networkinterfacecountrequest.html#cfn-ec2-ec2fleet-networkinterfacecountrequest-max>
                                          max :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-networkinterfacecountrequest.html#cfn-ec2-ec2fleet-networkinterfacecountrequest-min>
                                          min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceCountRequestProperty ::
  NetworkInterfaceCountRequestProperty
mkNetworkInterfaceCountRequestProperty
  = NetworkInterfaceCountRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceCountRequestProperty where
  toResourceProperties NetworkInterfaceCountRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.NetworkInterfaceCountRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkInterfaceCountRequestProperty where
  toJSON NetworkInterfaceCountRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkInterfaceCountRequestProperty where
  type PropertyType "Max" NetworkInterfaceCountRequestProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountRequestProperty {..}
    = NetworkInterfaceCountRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkInterfaceCountRequestProperty where
  type PropertyType "Min" NetworkInterfaceCountRequestProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountRequestProperty {..}
    = NetworkInterfaceCountRequestProperty
        {min = Prelude.pure newValue, ..}