module Stratosphere.EC2.LaunchTemplate.NetworkInterfaceCountProperty (
        NetworkInterfaceCountProperty(..), mkNetworkInterfaceCountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceCountProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterfacecount.html>
    NetworkInterfaceCountProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterfacecount.html#cfn-ec2-launchtemplate-networkinterfacecount-max>
                                   max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterfacecount.html#cfn-ec2-launchtemplate-networkinterfacecount-min>
                                   min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceCountProperty :: NetworkInterfaceCountProperty
mkNetworkInterfaceCountProperty
  = NetworkInterfaceCountProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceCountProperty where
  toResourceProperties NetworkInterfaceCountProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkInterfaceCount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON NetworkInterfaceCountProperty where
  toJSON NetworkInterfaceCountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" NetworkInterfaceCountProperty where
  type PropertyType "Max" NetworkInterfaceCountProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountProperty {..}
    = NetworkInterfaceCountProperty {max = Prelude.pure newValue, ..}
instance Property "Min" NetworkInterfaceCountProperty where
  type PropertyType "Min" NetworkInterfaceCountProperty = Value Prelude.Integer
  set newValue NetworkInterfaceCountProperty {..}
    = NetworkInterfaceCountProperty {min = Prelude.pure newValue, ..}