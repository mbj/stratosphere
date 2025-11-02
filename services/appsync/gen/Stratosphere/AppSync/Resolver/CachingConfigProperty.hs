module Stratosphere.AppSync.Resolver.CachingConfigProperty (
        CachingConfigProperty(..), mkCachingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CachingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html>
    CachingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-cachingkeys>
                           cachingKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-ttl>
                           ttl :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCachingConfigProperty ::
  Value Prelude.Double -> CachingConfigProperty
mkCachingConfigProperty ttl
  = CachingConfigProperty
      {haddock_workaround_ = (), ttl = ttl,
       cachingKeys = Prelude.Nothing}
instance ToResourceProperties CachingConfigProperty where
  toResourceProperties CachingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.CachingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Ttl" JSON..= ttl]
                           (Prelude.catMaybes
                              [(JSON..=) "CachingKeys" Prelude.<$> cachingKeys]))}
instance JSON.ToJSON CachingConfigProperty where
  toJSON CachingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Ttl" JSON..= ttl]
              (Prelude.catMaybes
                 [(JSON..=) "CachingKeys" Prelude.<$> cachingKeys])))
instance Property "CachingKeys" CachingConfigProperty where
  type PropertyType "CachingKeys" CachingConfigProperty = ValueList Prelude.Text
  set newValue CachingConfigProperty {..}
    = CachingConfigProperty {cachingKeys = Prelude.pure newValue, ..}
instance Property "Ttl" CachingConfigProperty where
  type PropertyType "Ttl" CachingConfigProperty = Value Prelude.Double
  set newValue CachingConfigProperty {..}
    = CachingConfigProperty {ttl = newValue, ..}