module Stratosphere.EC2.LaunchTemplate.AcceleratorTotalMemoryMiBProperty (
        AcceleratorTotalMemoryMiBProperty(..),
        mkAcceleratorTotalMemoryMiBProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorTotalMemoryMiBProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratortotalmemorymib.html>
    AcceleratorTotalMemoryMiBProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratortotalmemorymib.html#cfn-ec2-launchtemplate-acceleratortotalmemorymib-max>
                                       max :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratortotalmemorymib.html#cfn-ec2-launchtemplate-acceleratortotalmemorymib-min>
                                       min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorTotalMemoryMiBProperty ::
  AcceleratorTotalMemoryMiBProperty
mkAcceleratorTotalMemoryMiBProperty
  = AcceleratorTotalMemoryMiBProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties AcceleratorTotalMemoryMiBProperty where
  toResourceProperties AcceleratorTotalMemoryMiBProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.AcceleratorTotalMemoryMiB",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorTotalMemoryMiBProperty where
  toJSON AcceleratorTotalMemoryMiBProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorTotalMemoryMiBProperty where
  type PropertyType "Max" AcceleratorTotalMemoryMiBProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBProperty {..}
    = AcceleratorTotalMemoryMiBProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorTotalMemoryMiBProperty where
  type PropertyType "Min" AcceleratorTotalMemoryMiBProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBProperty {..}
    = AcceleratorTotalMemoryMiBProperty
        {min = Prelude.pure newValue, ..}