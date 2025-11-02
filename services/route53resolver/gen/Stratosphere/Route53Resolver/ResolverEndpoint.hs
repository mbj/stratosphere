module Stratosphere.Route53Resolver.ResolverEndpoint (
        module Exports, ResolverEndpoint(..), mkResolverEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53Resolver.ResolverEndpoint.IpAddressRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResolverEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html>
    ResolverEndpoint {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-direction>
                      direction :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-ipaddresses>
                      ipAddresses :: [IpAddressRequestProperty],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-outpostarn>
                      outpostArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-preferredinstancetype>
                      preferredInstanceType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-protocols>
                      protocols :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-resolverendpointtype>
                      resolverEndpointType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-securitygroupids>
                      securityGroupIds :: (ValueList Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverendpoint.html#cfn-route53resolver-resolverendpoint-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverEndpoint ::
  Value Prelude.Text
  -> [IpAddressRequestProperty]
     -> ValueList Prelude.Text -> ResolverEndpoint
mkResolverEndpoint direction ipAddresses securityGroupIds
  = ResolverEndpoint
      {haddock_workaround_ = (), direction = direction,
       ipAddresses = ipAddresses, securityGroupIds = securityGroupIds,
       name = Prelude.Nothing, outpostArn = Prelude.Nothing,
       preferredInstanceType = Prelude.Nothing,
       protocols = Prelude.Nothing,
       resolverEndpointType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResolverEndpoint where
  toResourceProperties ResolverEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Direction" JSON..= direction, "IpAddresses" JSON..= ipAddresses,
                            "SecurityGroupIds" JSON..= securityGroupIds]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                               (JSON..=) "PreferredInstanceType"
                                 Prelude.<$> preferredInstanceType,
                               (JSON..=) "Protocols" Prelude.<$> protocols,
                               (JSON..=) "ResolverEndpointType" Prelude.<$> resolverEndpointType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResolverEndpoint where
  toJSON ResolverEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Direction" JSON..= direction, "IpAddresses" JSON..= ipAddresses,
               "SecurityGroupIds" JSON..= securityGroupIds]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                  (JSON..=) "PreferredInstanceType"
                    Prelude.<$> preferredInstanceType,
                  (JSON..=) "Protocols" Prelude.<$> protocols,
                  (JSON..=) "ResolverEndpointType" Prelude.<$> resolverEndpointType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Direction" ResolverEndpoint where
  type PropertyType "Direction" ResolverEndpoint = Value Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {direction = newValue, ..}
instance Property "IpAddresses" ResolverEndpoint where
  type PropertyType "IpAddresses" ResolverEndpoint = [IpAddressRequestProperty]
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {ipAddresses = newValue, ..}
instance Property "Name" ResolverEndpoint where
  type PropertyType "Name" ResolverEndpoint = Value Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {name = Prelude.pure newValue, ..}
instance Property "OutpostArn" ResolverEndpoint where
  type PropertyType "OutpostArn" ResolverEndpoint = Value Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {outpostArn = Prelude.pure newValue, ..}
instance Property "PreferredInstanceType" ResolverEndpoint where
  type PropertyType "PreferredInstanceType" ResolverEndpoint = Value Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint
        {preferredInstanceType = Prelude.pure newValue, ..}
instance Property "Protocols" ResolverEndpoint where
  type PropertyType "Protocols" ResolverEndpoint = ValueList Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {protocols = Prelude.pure newValue, ..}
instance Property "ResolverEndpointType" ResolverEndpoint where
  type PropertyType "ResolverEndpointType" ResolverEndpoint = Value Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint
        {resolverEndpointType = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ResolverEndpoint where
  type PropertyType "SecurityGroupIds" ResolverEndpoint = ValueList Prelude.Text
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {securityGroupIds = newValue, ..}
instance Property "Tags" ResolverEndpoint where
  type PropertyType "Tags" ResolverEndpoint = [Tag]
  set newValue ResolverEndpoint {..}
    = ResolverEndpoint {tags = Prelude.pure newValue, ..}