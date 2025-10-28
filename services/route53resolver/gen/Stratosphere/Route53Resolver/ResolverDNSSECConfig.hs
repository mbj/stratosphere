module Stratosphere.Route53Resolver.ResolverDNSSECConfig (
        ResolverDNSSECConfig(..), mkResolverDNSSECConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolverDNSSECConfig
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverdnssecconfig.html>
    ResolverDNSSECConfig {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverdnssecconfig.html#cfn-route53resolver-resolverdnssecconfig-resourceid>
                          resourceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverDNSSECConfig :: ResolverDNSSECConfig
mkResolverDNSSECConfig
  = ResolverDNSSECConfig {resourceId = Prelude.Nothing}
instance ToResourceProperties ResolverDNSSECConfig where
  toResourceProperties ResolverDNSSECConfig {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverDNSSECConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResourceId" Prelude.<$> resourceId])}
instance JSON.ToJSON ResolverDNSSECConfig where
  toJSON ResolverDNSSECConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResourceId" Prelude.<$> resourceId]))
instance Property "ResourceId" ResolverDNSSECConfig where
  type PropertyType "ResourceId" ResolverDNSSECConfig = Value Prelude.Text
  set newValue ResolverDNSSECConfig {}
    = ResolverDNSSECConfig {resourceId = Prelude.pure newValue, ..}