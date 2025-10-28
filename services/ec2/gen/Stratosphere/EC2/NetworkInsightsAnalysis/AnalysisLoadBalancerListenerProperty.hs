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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisloadbalancerlistener.html>
    AnalysisLoadBalancerListenerProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisloadbalancerlistener.html#cfn-ec2-networkinsightsanalysis-analysisloadbalancerlistener-instanceport>
                                          instancePort :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysisloadbalancerlistener.html#cfn-ec2-networkinsightsanalysis-analysisloadbalancerlistener-loadbalancerport>
                                          loadBalancerPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisLoadBalancerListenerProperty ::
  AnalysisLoadBalancerListenerProperty
mkAnalysisLoadBalancerListenerProperty
  = AnalysisLoadBalancerListenerProperty
      {haddock_workaround_ = (), instancePort = Prelude.Nothing,
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