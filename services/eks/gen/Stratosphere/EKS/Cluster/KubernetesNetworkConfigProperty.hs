module Stratosphere.EKS.Cluster.KubernetesNetworkConfigProperty (
        KubernetesNetworkConfigProperty(..),
        mkKubernetesNetworkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KubernetesNetworkConfigProperty
  = KubernetesNetworkConfigProperty {ipFamily :: (Prelude.Maybe (Value Prelude.Text)),
                                     serviceIpv4Cidr :: (Prelude.Maybe (Value Prelude.Text)),
                                     serviceIpv6Cidr :: (Prelude.Maybe (Value Prelude.Text))}
mkKubernetesNetworkConfigProperty ::
  KubernetesNetworkConfigProperty
mkKubernetesNetworkConfigProperty
  = KubernetesNetworkConfigProperty
      {ipFamily = Prelude.Nothing, serviceIpv4Cidr = Prelude.Nothing,
       serviceIpv6Cidr = Prelude.Nothing}
instance ToResourceProperties KubernetesNetworkConfigProperty where
  toResourceProperties KubernetesNetworkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.KubernetesNetworkConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IpFamily" Prelude.<$> ipFamily,
                            (JSON..=) "ServiceIpv4Cidr" Prelude.<$> serviceIpv4Cidr,
                            (JSON..=) "ServiceIpv6Cidr" Prelude.<$> serviceIpv6Cidr])}
instance JSON.ToJSON KubernetesNetworkConfigProperty where
  toJSON KubernetesNetworkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IpFamily" Prelude.<$> ipFamily,
               (JSON..=) "ServiceIpv4Cidr" Prelude.<$> serviceIpv4Cidr,
               (JSON..=) "ServiceIpv6Cidr" Prelude.<$> serviceIpv6Cidr]))
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