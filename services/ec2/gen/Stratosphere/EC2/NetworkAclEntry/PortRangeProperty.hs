module Stratosphere.EC2.NetworkAclEntry.PortRangeProperty (
        PortRangeProperty(..), mkPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html>
    PortRangeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from>
                       from :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to>
                       to :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortRangeProperty :: PortRangeProperty
mkPortRangeProperty
  = PortRangeProperty
      {haddock_workaround_ = (), from = Prelude.Nothing,
       to = Prelude.Nothing}
instance ToResourceProperties PortRangeProperty where
  toResourceProperties PortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkAclEntry.PortRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "From" Prelude.<$> from,
                            (JSON..=) "To" Prelude.<$> to])}
instance JSON.ToJSON PortRangeProperty where
  toJSON PortRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "From" Prelude.<$> from,
               (JSON..=) "To" Prelude.<$> to]))
instance Property "From" PortRangeProperty where
  type PropertyType "From" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {from = Prelude.pure newValue, ..}
instance Property "To" PortRangeProperty where
  type PropertyType "To" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {to = Prelude.pure newValue, ..}