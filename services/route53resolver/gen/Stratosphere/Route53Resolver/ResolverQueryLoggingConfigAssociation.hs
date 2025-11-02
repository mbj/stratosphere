module Stratosphere.Route53Resolver.ResolverQueryLoggingConfigAssociation (
        ResolverQueryLoggingConfigAssociation(..),
        mkResolverQueryLoggingConfigAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolverQueryLoggingConfigAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html>
    ResolverQueryLoggingConfigAssociation {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html#cfn-route53resolver-resolverqueryloggingconfigassociation-resolverquerylogconfigid>
                                           resolverQueryLogConfigId :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfigassociation.html#cfn-route53resolver-resolverqueryloggingconfigassociation-resourceid>
                                           resourceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverQueryLoggingConfigAssociation ::
  ResolverQueryLoggingConfigAssociation
mkResolverQueryLoggingConfigAssociation
  = ResolverQueryLoggingConfigAssociation
      {haddock_workaround_ = (),
       resolverQueryLogConfigId = Prelude.Nothing,
       resourceId = Prelude.Nothing}
instance ToResourceProperties ResolverQueryLoggingConfigAssociation where
  toResourceProperties ResolverQueryLoggingConfigAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResolverQueryLogConfigId"
                              Prelude.<$> resolverQueryLogConfigId,
                            (JSON..=) "ResourceId" Prelude.<$> resourceId])}
instance JSON.ToJSON ResolverQueryLoggingConfigAssociation where
  toJSON ResolverQueryLoggingConfigAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResolverQueryLogConfigId"
                 Prelude.<$> resolverQueryLogConfigId,
               (JSON..=) "ResourceId" Prelude.<$> resourceId]))
instance Property "ResolverQueryLogConfigId" ResolverQueryLoggingConfigAssociation where
  type PropertyType "ResolverQueryLogConfigId" ResolverQueryLoggingConfigAssociation = Value Prelude.Text
  set newValue ResolverQueryLoggingConfigAssociation {..}
    = ResolverQueryLoggingConfigAssociation
        {resolverQueryLogConfigId = Prelude.pure newValue, ..}
instance Property "ResourceId" ResolverQueryLoggingConfigAssociation where
  type PropertyType "ResourceId" ResolverQueryLoggingConfigAssociation = Value Prelude.Text
  set newValue ResolverQueryLoggingConfigAssociation {..}
    = ResolverQueryLoggingConfigAssociation
        {resourceId = Prelude.pure newValue, ..}