module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisLoadBalancerTargetProperty (
        module Exports, AnalysisLoadBalancerTargetProperty(..),
        mkAnalysisLoadBalancerTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisComponentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisLoadBalancerTargetProperty
  = AnalysisLoadBalancerTargetProperty {address :: (Prelude.Maybe (Value Prelude.Text)),
                                        availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                        instance' :: (Prelude.Maybe AnalysisComponentProperty),
                                        port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisLoadBalancerTargetProperty ::
  AnalysisLoadBalancerTargetProperty
mkAnalysisLoadBalancerTargetProperty
  = AnalysisLoadBalancerTargetProperty
      {address = Prelude.Nothing, availabilityZone = Prelude.Nothing,
       instance' = Prelude.Nothing, port = Prelude.Nothing}
instance ToResourceProperties AnalysisLoadBalancerTargetProperty where
  toResourceProperties AnalysisLoadBalancerTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisLoadBalancerTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "Instance" Prelude.<$> instance',
                            (JSON..=) "Port" Prelude.<$> port])}
instance JSON.ToJSON AnalysisLoadBalancerTargetProperty where
  toJSON AnalysisLoadBalancerTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "Instance" Prelude.<$> instance',
               (JSON..=) "Port" Prelude.<$> port]))
instance Property "Address" AnalysisLoadBalancerTargetProperty where
  type PropertyType "Address" AnalysisLoadBalancerTargetProperty = Value Prelude.Text
  set newValue AnalysisLoadBalancerTargetProperty {..}
    = AnalysisLoadBalancerTargetProperty
        {address = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" AnalysisLoadBalancerTargetProperty where
  type PropertyType "AvailabilityZone" AnalysisLoadBalancerTargetProperty = Value Prelude.Text
  set newValue AnalysisLoadBalancerTargetProperty {..}
    = AnalysisLoadBalancerTargetProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "Instance" AnalysisLoadBalancerTargetProperty where
  type PropertyType "Instance" AnalysisLoadBalancerTargetProperty = AnalysisComponentProperty
  set newValue AnalysisLoadBalancerTargetProperty {..}
    = AnalysisLoadBalancerTargetProperty
        {instance' = Prelude.pure newValue, ..}
instance Property "Port" AnalysisLoadBalancerTargetProperty where
  type PropertyType "Port" AnalysisLoadBalancerTargetProperty = Value Prelude.Integer
  set newValue AnalysisLoadBalancerTargetProperty {..}
    = AnalysisLoadBalancerTargetProperty
        {port = Prelude.pure newValue, ..}