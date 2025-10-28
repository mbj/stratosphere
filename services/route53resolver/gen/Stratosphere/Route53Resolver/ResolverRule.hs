module Stratosphere.Route53Resolver.ResolverRule (
        module Exports, ResolverRule(..), mkResolverRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53Resolver.ResolverRule.TargetAddressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResolverRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html>
    ResolverRule {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-domainname>
                  domainName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-resolverendpointid>
                  resolverEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-ruletype>
                  ruleType :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverrule.html#cfn-route53resolver-resolverrule-targetips>
                  targetIps :: (Prelude.Maybe [TargetAddressProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverRule :: Value Prelude.Text -> ResolverRule
mkResolverRule ruleType
  = ResolverRule
      {haddock_workaround_ = (), ruleType = ruleType,
       domainName = Prelude.Nothing, name = Prelude.Nothing,
       resolverEndpointId = Prelude.Nothing, tags = Prelude.Nothing,
       targetIps = Prelude.Nothing}
instance ToResourceProperties ResolverRule where
  toResourceProperties ResolverRule {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleType" JSON..= ruleType]
                           (Prelude.catMaybes
                              [(JSON..=) "DomainName" Prelude.<$> domainName,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ResolverEndpointId" Prelude.<$> resolverEndpointId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetIps" Prelude.<$> targetIps]))}
instance JSON.ToJSON ResolverRule where
  toJSON ResolverRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleType" JSON..= ruleType]
              (Prelude.catMaybes
                 [(JSON..=) "DomainName" Prelude.<$> domainName,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ResolverEndpointId" Prelude.<$> resolverEndpointId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetIps" Prelude.<$> targetIps])))
instance Property "DomainName" ResolverRule where
  type PropertyType "DomainName" ResolverRule = Value Prelude.Text
  set newValue ResolverRule {..}
    = ResolverRule {domainName = Prelude.pure newValue, ..}
instance Property "Name" ResolverRule where
  type PropertyType "Name" ResolverRule = Value Prelude.Text
  set newValue ResolverRule {..}
    = ResolverRule {name = Prelude.pure newValue, ..}
instance Property "ResolverEndpointId" ResolverRule where
  type PropertyType "ResolverEndpointId" ResolverRule = Value Prelude.Text
  set newValue ResolverRule {..}
    = ResolverRule {resolverEndpointId = Prelude.pure newValue, ..}
instance Property "RuleType" ResolverRule where
  type PropertyType "RuleType" ResolverRule = Value Prelude.Text
  set newValue ResolverRule {..}
    = ResolverRule {ruleType = newValue, ..}
instance Property "Tags" ResolverRule where
  type PropertyType "Tags" ResolverRule = [Tag]
  set newValue ResolverRule {..}
    = ResolverRule {tags = Prelude.pure newValue, ..}
instance Property "TargetIps" ResolverRule where
  type PropertyType "TargetIps" ResolverRule = [TargetAddressProperty]
  set newValue ResolverRule {..}
    = ResolverRule {targetIps = Prelude.pure newValue, ..}