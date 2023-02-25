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
  = ResolverQueryLoggingConfigAssociation {resolverQueryLogConfigId :: (Prelude.Maybe (Value Prelude.Text)),
                                           resourceId :: (Prelude.Maybe (Value Prelude.Text))}
mkResolverQueryLoggingConfigAssociation ::
  ResolverQueryLoggingConfigAssociation
mkResolverQueryLoggingConfigAssociation
  = ResolverQueryLoggingConfigAssociation
      {resolverQueryLogConfigId = Prelude.Nothing,
       resourceId = Prelude.Nothing}
instance ToResourceProperties ResolverQueryLoggingConfigAssociation where
  toResourceProperties ResolverQueryLoggingConfigAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverQueryLoggingConfigAssociation",
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