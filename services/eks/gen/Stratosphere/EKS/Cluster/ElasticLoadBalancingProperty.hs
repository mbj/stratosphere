module Stratosphere.EKS.Cluster.ElasticLoadBalancingProperty (
        ElasticLoadBalancingProperty(..), mkElasticLoadBalancingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticLoadBalancingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-elasticloadbalancing.html>
    ElasticLoadBalancingProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-elasticloadbalancing.html#cfn-eks-cluster-elasticloadbalancing-enabled>
                                  enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticLoadBalancingProperty :: ElasticLoadBalancingProperty
mkElasticLoadBalancingProperty
  = ElasticLoadBalancingProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties ElasticLoadBalancingProperty where
  toResourceProperties ElasticLoadBalancingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.ElasticLoadBalancing",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON ElasticLoadBalancingProperty where
  toJSON ElasticLoadBalancingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" ElasticLoadBalancingProperty where
  type PropertyType "Enabled" ElasticLoadBalancingProperty = Value Prelude.Bool
  set newValue ElasticLoadBalancingProperty {..}
    = ElasticLoadBalancingProperty
        {enabled = Prelude.pure newValue, ..}