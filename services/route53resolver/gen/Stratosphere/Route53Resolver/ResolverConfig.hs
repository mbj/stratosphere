module Stratosphere.Route53Resolver.ResolverConfig (
        ResolverConfig(..), mkResolverConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResolverConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverconfig.html>
    ResolverConfig {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverconfig.html#cfn-route53resolver-resolverconfig-autodefinedreverseflag>
                    autodefinedReverseFlag :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-resolverconfig.html#cfn-route53resolver-resolverconfig-resourceid>
                    resourceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResolverConfig ::
  Value Prelude.Text -> Value Prelude.Text -> ResolverConfig
mkResolverConfig autodefinedReverseFlag resourceId
  = ResolverConfig
      {haddock_workaround_ = (),
       autodefinedReverseFlag = autodefinedReverseFlag,
       resourceId = resourceId}
instance ToResourceProperties ResolverConfig where
  toResourceProperties ResolverConfig {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverConfig",
         supportsTags = Prelude.False,
         properties = ["AutodefinedReverseFlag"
                         JSON..= autodefinedReverseFlag,
                       "ResourceId" JSON..= resourceId]}
instance JSON.ToJSON ResolverConfig where
  toJSON ResolverConfig {..}
    = JSON.object
        ["AutodefinedReverseFlag" JSON..= autodefinedReverseFlag,
         "ResourceId" JSON..= resourceId]
instance Property "AutodefinedReverseFlag" ResolverConfig where
  type PropertyType "AutodefinedReverseFlag" ResolverConfig = Value Prelude.Text
  set newValue ResolverConfig {..}
    = ResolverConfig {autodefinedReverseFlag = newValue, ..}
instance Property "ResourceId" ResolverConfig where
  type PropertyType "ResourceId" ResolverConfig = Value Prelude.Text
  set newValue ResolverConfig {..}
    = ResolverConfig {resourceId = newValue, ..}