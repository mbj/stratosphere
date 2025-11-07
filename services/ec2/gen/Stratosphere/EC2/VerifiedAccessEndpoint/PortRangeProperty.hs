module Stratosphere.EC2.VerifiedAccessEndpoint.PortRangeProperty (
        PortRangeProperty(..), mkPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-portrange.html>
    PortRangeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-portrange.html#cfn-ec2-verifiedaccessendpoint-portrange-fromport>
                       fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-portrange.html#cfn-ec2-verifiedaccessendpoint-portrange-toport>
                       toPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortRangeProperty :: PortRangeProperty
mkPortRangeProperty
  = PortRangeProperty
      {haddock_workaround_ = (), fromPort = Prelude.Nothing,
       toPort = Prelude.Nothing}
instance ToResourceProperties PortRangeProperty where
  toResourceProperties PortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.PortRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FromPort" Prelude.<$> fromPort,
                            (JSON..=) "ToPort" Prelude.<$> toPort])}
instance JSON.ToJSON PortRangeProperty where
  toJSON PortRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FromPort" Prelude.<$> fromPort,
               (JSON..=) "ToPort" Prelude.<$> toPort]))
instance Property "FromPort" PortRangeProperty where
  type PropertyType "FromPort" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {fromPort = Prelude.pure newValue, ..}
instance Property "ToPort" PortRangeProperty where
  type PropertyType "ToPort" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {toPort = Prelude.pure newValue, ..}