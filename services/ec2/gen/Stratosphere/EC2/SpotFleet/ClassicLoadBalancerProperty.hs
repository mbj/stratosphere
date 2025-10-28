module Stratosphere.EC2.SpotFleet.ClassicLoadBalancerProperty (
        ClassicLoadBalancerProperty(..), mkClassicLoadBalancerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClassicLoadBalancerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html>
    ClassicLoadBalancerProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html#cfn-ec2-spotfleet-classicloadbalancer-name>
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClassicLoadBalancerProperty ::
  Value Prelude.Text -> ClassicLoadBalancerProperty
mkClassicLoadBalancerProperty name
  = ClassicLoadBalancerProperty
      {haddock_workaround_ = (), name = name}
instance ToResourceProperties ClassicLoadBalancerProperty where
  toResourceProperties ClassicLoadBalancerProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.ClassicLoadBalancer",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON ClassicLoadBalancerProperty where
  toJSON ClassicLoadBalancerProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" ClassicLoadBalancerProperty where
  type PropertyType "Name" ClassicLoadBalancerProperty = Value Prelude.Text
  set newValue ClassicLoadBalancerProperty {..}
    = ClassicLoadBalancerProperty {name = newValue, ..}