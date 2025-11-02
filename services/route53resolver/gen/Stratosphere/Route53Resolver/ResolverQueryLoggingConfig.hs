module Stratosphere.Route53Resolver.ResolverQueryLoggingConfig (
        ResolverQueryLoggingConfig(..), mkResolverQueryLoggingConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolverQueryLoggingConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html>
    ResolverQueryLoggingConfig {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html#cfn-route53resolver-resolverqueryloggingconfig-destinationarn>
                                destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverqueryloggingconfig.html#cfn-route53resolver-resolverqueryloggingconfig-name>
                                name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverQueryLoggingConfig :: ResolverQueryLoggingConfig
mkResolverQueryLoggingConfig
  = ResolverQueryLoggingConfig
      {haddock_workaround_ = (), destinationArn = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ResolverQueryLoggingConfig where
  toResourceProperties ResolverQueryLoggingConfig {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverQueryLoggingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ResolverQueryLoggingConfig where
  toJSON ResolverQueryLoggingConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "DestinationArn" ResolverQueryLoggingConfig where
  type PropertyType "DestinationArn" ResolverQueryLoggingConfig = Value Prelude.Text
  set newValue ResolverQueryLoggingConfig {..}
    = ResolverQueryLoggingConfig
        {destinationArn = Prelude.pure newValue, ..}
instance Property "Name" ResolverQueryLoggingConfig where
  type PropertyType "Name" ResolverQueryLoggingConfig = Value Prelude.Text
  set newValue ResolverQueryLoggingConfig {..}
    = ResolverQueryLoggingConfig {name = Prelude.pure newValue, ..}