module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisLoadBalancerListenerProperty (
        AnalysisLoadBalancerListenerProperty(..),
        mkAnalysisLoadBalancerListenerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisLoadBalancerListenerProperty
  = AnalysisLoadBalancerListenerProperty {instancePort :: (Prelude.Maybe (Value Prelude.Integer)),
                                          loadBalancerPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkAnalysisLoadBalancerListenerProperty ::
  AnalysisLoadBalancerListenerProperty
mkAnalysisLoadBalancerListenerProperty
  = AnalysisLoadBalancerListenerProperty
      {instancePort = Prelude.Nothing,
       loadBalancerPort = Prelude.Nothing}
instance ToResourceProperties AnalysisLoadBalancerListenerProperty where
  toResourceProperties AnalysisLoadBalancerListenerProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisLoadBalancerListener",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstancePort" Prelude.<$> instancePort,
                            (JSON..=) "LoadBalancerPort" Prelude.<$> loadBalancerPort])}
instance JSON.ToJSON AnalysisLoadBalancerListenerProperty where
  toJSON AnalysisLoadBalancerListenerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstancePort" Prelude.<$> instancePort,
               (JSON..=) "LoadBalancerPort" Prelude.<$> loadBalancerPort]))
instance Property "InstancePort" AnalysisLoadBalancerListenerProperty where
  type PropertyType "InstancePort" AnalysisLoadBalancerListenerProperty = Value Prelude.Integer
  set newValue AnalysisLoadBalancerListenerProperty {..}
    = AnalysisLoadBalancerListenerProperty
        {instancePort = Prelude.pure newValue, ..}
instance Property "LoadBalancerPort" AnalysisLoadBalancerListenerProperty where
  type PropertyType "LoadBalancerPort" AnalysisLoadBalancerListenerProperty = Value Prelude.Integer
  set newValue AnalysisLoadBalancerListenerProperty {..}
    = AnalysisLoadBalancerListenerProperty
        {loadBalancerPort = Prelude.pure newValue, ..}