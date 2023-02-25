module Stratosphere.EC2.SpotFleet.ClassicLoadBalancerProperty (
        ClassicLoadBalancerProperty(..), mkClassicLoadBalancerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClassicLoadBalancerProperty
  = ClassicLoadBalancerProperty {name :: (Value Prelude.Text)}
mkClassicLoadBalancerProperty ::
  Value Prelude.Text -> ClassicLoadBalancerProperty
mkClassicLoadBalancerProperty name
  = ClassicLoadBalancerProperty {name = name}
instance ToResourceProperties ClassicLoadBalancerProperty where
  toResourceProperties ClassicLoadBalancerProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.ClassicLoadBalancer",
         properties = ["Name" JSON..= name]}
instance JSON.ToJSON ClassicLoadBalancerProperty where
  toJSON ClassicLoadBalancerProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" ClassicLoadBalancerProperty where
  type PropertyType "Name" ClassicLoadBalancerProperty = Value Prelude.Text
  set newValue ClassicLoadBalancerProperty {}
    = ClassicLoadBalancerProperty {name = newValue, ..}