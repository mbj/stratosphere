module Stratosphere.EC2.SpotFleet.ClassicLoadBalancersConfigProperty (
        module Exports, ClassicLoadBalancersConfigProperty(..),
        mkClassicLoadBalancersConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.ClassicLoadBalancerProperty as Exports
import Stratosphere.ResourceProperties
data ClassicLoadBalancersConfigProperty
  = ClassicLoadBalancersConfigProperty {classicLoadBalancers :: [ClassicLoadBalancerProperty]}
mkClassicLoadBalancersConfigProperty ::
  [ClassicLoadBalancerProperty] -> ClassicLoadBalancersConfigProperty
mkClassicLoadBalancersConfigProperty classicLoadBalancers
  = ClassicLoadBalancersConfigProperty
      {classicLoadBalancers = classicLoadBalancers}
instance ToResourceProperties ClassicLoadBalancersConfigProperty where
  toResourceProperties ClassicLoadBalancersConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.ClassicLoadBalancersConfig",
         supportsTags = Prelude.False,
         properties = ["ClassicLoadBalancers" JSON..= classicLoadBalancers]}
instance JSON.ToJSON ClassicLoadBalancersConfigProperty where
  toJSON ClassicLoadBalancersConfigProperty {..}
    = JSON.object ["ClassicLoadBalancers" JSON..= classicLoadBalancers]
instance Property "ClassicLoadBalancers" ClassicLoadBalancersConfigProperty where
  type PropertyType "ClassicLoadBalancers" ClassicLoadBalancersConfigProperty = [ClassicLoadBalancerProperty]
  set newValue ClassicLoadBalancersConfigProperty {}
    = ClassicLoadBalancersConfigProperty
        {classicLoadBalancers = newValue, ..}