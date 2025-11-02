module Stratosphere.EC2.LaunchTemplate.AcceleratorCountProperty (
        AcceleratorCountProperty(..), mkAcceleratorCountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorCountProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratorcount.html>
    AcceleratorCountProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratorcount.html#cfn-ec2-launchtemplate-acceleratorcount-max>
                              max :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-acceleratorcount.html#cfn-ec2-launchtemplate-acceleratorcount-min>
                              min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorCountProperty :: AcceleratorCountProperty
mkAcceleratorCountProperty
  = AcceleratorCountProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties AcceleratorCountProperty where
  toResourceProperties AcceleratorCountProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.AcceleratorCount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorCountProperty where
  toJSON AcceleratorCountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorCountProperty where
  type PropertyType "Max" AcceleratorCountProperty = Value Prelude.Integer
  set newValue AcceleratorCountProperty {..}
    = AcceleratorCountProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorCountProperty where
  type PropertyType "Min" AcceleratorCountProperty = Value Prelude.Integer
  set newValue AcceleratorCountProperty {..}
    = AcceleratorCountProperty {min = Prelude.pure newValue, ..}