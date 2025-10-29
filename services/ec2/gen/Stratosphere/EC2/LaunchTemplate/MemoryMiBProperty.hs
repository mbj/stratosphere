module Stratosphere.EC2.LaunchTemplate.MemoryMiBProperty (
        MemoryMiBProperty(..), mkMemoryMiBProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryMiBProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-memorymib.html>
    MemoryMiBProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-memorymib.html#cfn-ec2-launchtemplate-memorymib-max>
                       max :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-memorymib.html#cfn-ec2-launchtemplate-memorymib-min>
                       min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryMiBProperty :: MemoryMiBProperty
mkMemoryMiBProperty
  = MemoryMiBProperty {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties MemoryMiBProperty where
  toResourceProperties MemoryMiBProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.MemoryMiB",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON MemoryMiBProperty where
  toJSON MemoryMiBProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" MemoryMiBProperty where
  type PropertyType "Max" MemoryMiBProperty = Value Prelude.Integer
  set newValue MemoryMiBProperty {..}
    = MemoryMiBProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryMiBProperty where
  type PropertyType "Min" MemoryMiBProperty = Value Prelude.Integer
  set newValue MemoryMiBProperty {..}
    = MemoryMiBProperty {min = Prelude.pure newValue, ..}