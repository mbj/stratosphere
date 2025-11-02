module Stratosphere.EKS.Cluster.KubernetesNetworkConfigProperty (
        module Exports, KubernetesNetworkConfigProperty(..),
        mkKubernetesNetworkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ElasticLoadBalancingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KubernetesNetworkConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-kubernetesnetworkconfig.html>
    KubernetesNetworkConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-kubernetesnetworkconfig.html#cfn-eks-cluster-kubernetesnetworkconfig-elasticloadbalancing>
                                     elasticLoadBalancing :: (Prelude.Maybe ElasticLoadBalancingProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-kubernetesnetworkconfig.html#cfn-eks-cluster-kubernetesnetworkconfig-ipfamily>
                                     ipFamily :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-kubernetesnetworkconfig.html#cfn-eks-cluster-kubernetesnetworkconfig-serviceipv4cidr>
                                     serviceIpv4Cidr :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-kubernetesnetworkconfig.html#cfn-eks-cluster-kubernetesnetworkconfig-serviceipv6cidr>
                                     serviceIpv6Cidr :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKubernetesNetworkConfigProperty ::
  KubernetesNetworkConfigProperty
mkKubernetesNetworkConfigProperty
  = KubernetesNetworkConfigProperty
      {haddock_workaround_ = (), elasticLoadBalancing = Prelude.Nothing,
       ipFamily = Prelude.Nothing, serviceIpv4Cidr = Prelude.Nothing,
       serviceIpv6Cidr = Prelude.Nothing}
instance ToResourceProperties KubernetesNetworkConfigProperty where
  toResourceProperties KubernetesNetworkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.KubernetesNetworkConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ElasticLoadBalancing" Prelude.<$> elasticLoadBalancing,
                            (JSON..=) "IpFamily" Prelude.<$> ipFamily,
                            (JSON..=) "ServiceIpv4Cidr" Prelude.<$> serviceIpv4Cidr,
                            (JSON..=) "ServiceIpv6Cidr" Prelude.<$> serviceIpv6Cidr])}
instance JSON.ToJSON KubernetesNetworkConfigProperty where
  toJSON KubernetesNetworkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ElasticLoadBalancing" Prelude.<$> elasticLoadBalancing,
               (JSON..=) "IpFamily" Prelude.<$> ipFamily,
               (JSON..=) "ServiceIpv4Cidr" Prelude.<$> serviceIpv4Cidr,
               (JSON..=) "ServiceIpv6Cidr" Prelude.<$> serviceIpv6Cidr]))
instance Property "ElasticLoadBalancing" KubernetesNetworkConfigProperty where
  type PropertyType "ElasticLoadBalancing" KubernetesNetworkConfigProperty = ElasticLoadBalancingProperty
  set newValue KubernetesNetworkConfigProperty {..}
    = KubernetesNetworkConfigProperty
        {elasticLoadBalancing = Prelude.pure newValue, ..}
instance Property "IpFamily" KubernetesNetworkConfigProperty where
  type PropertyType "IpFamily" KubernetesNetworkConfigProperty = Value Prelude.Text
  set newValue KubernetesNetworkConfigProperty {..}
    = KubernetesNetworkConfigProperty
        {ipFamily = Prelude.pure newValue, ..}
instance Property "ServiceIpv4Cidr" KubernetesNetworkConfigProperty where
  type PropertyType "ServiceIpv4Cidr" KubernetesNetworkConfigProperty = Value Prelude.Text
  set newValue KubernetesNetworkConfigProperty {..}
    = KubernetesNetworkConfigProperty
        {serviceIpv4Cidr = Prelude.pure newValue, ..}
instance Property "ServiceIpv6Cidr" KubernetesNetworkConfigProperty where
  type PropertyType "ServiceIpv6Cidr" KubernetesNetworkConfigProperty = Value Prelude.Text
  set newValue KubernetesNetworkConfigProperty {..}
    = KubernetesNetworkConfigProperty
        {serviceIpv6Cidr = Prelude.pure newValue, ..}