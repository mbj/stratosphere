module Stratosphere.AppSync.ApiCache (
        ApiCache(..), mkApiCache
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiCache
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html>
    ApiCache {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apicachingbehavior>
              apiCachingBehavior :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apiid>
              apiId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-atrestencryptionenabled>
              atRestEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-healthmetricsconfig>
              healthMetricsConfig :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-transitencryptionenabled>
              transitEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-ttl>
              ttl :: (Value Prelude.Double),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-type>
              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiCache ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> Value Prelude.Text -> ApiCache
mkApiCache apiCachingBehavior apiId ttl type'
  = ApiCache
      {haddock_workaround_ = (), apiCachingBehavior = apiCachingBehavior,
       apiId = apiId, ttl = ttl, type' = type',
       atRestEncryptionEnabled = Prelude.Nothing,
       healthMetricsConfig = Prelude.Nothing,
       transitEncryptionEnabled = Prelude.Nothing}
instance ToResourceProperties ApiCache where
  toResourceProperties ApiCache {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ApiCache", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiCachingBehavior" JSON..= apiCachingBehavior,
                            "ApiId" JSON..= apiId, "Ttl" JSON..= ttl, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AtRestEncryptionEnabled"
                                 Prelude.<$> atRestEncryptionEnabled,
                               (JSON..=) "HealthMetricsConfig" Prelude.<$> healthMetricsConfig,
                               (JSON..=) "TransitEncryptionEnabled"
                                 Prelude.<$> transitEncryptionEnabled]))}
instance JSON.ToJSON ApiCache where
  toJSON ApiCache {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiCachingBehavior" JSON..= apiCachingBehavior,
               "ApiId" JSON..= apiId, "Ttl" JSON..= ttl, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AtRestEncryptionEnabled"
                    Prelude.<$> atRestEncryptionEnabled,
                  (JSON..=) "HealthMetricsConfig" Prelude.<$> healthMetricsConfig,
                  (JSON..=) "TransitEncryptionEnabled"
                    Prelude.<$> transitEncryptionEnabled])))
instance Property "ApiCachingBehavior" ApiCache where
  type PropertyType "ApiCachingBehavior" ApiCache = Value Prelude.Text
  set newValue ApiCache {..}
    = ApiCache {apiCachingBehavior = newValue, ..}
instance Property "ApiId" ApiCache where
  type PropertyType "ApiId" ApiCache = Value Prelude.Text
  set newValue ApiCache {..} = ApiCache {apiId = newValue, ..}
instance Property "AtRestEncryptionEnabled" ApiCache where
  type PropertyType "AtRestEncryptionEnabled" ApiCache = Value Prelude.Bool
  set newValue ApiCache {..}
    = ApiCache {atRestEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "HealthMetricsConfig" ApiCache where
  type PropertyType "HealthMetricsConfig" ApiCache = Value Prelude.Text
  set newValue ApiCache {..}
    = ApiCache {healthMetricsConfig = Prelude.pure newValue, ..}
instance Property "TransitEncryptionEnabled" ApiCache where
  type PropertyType "TransitEncryptionEnabled" ApiCache = Value Prelude.Bool
  set newValue ApiCache {..}
    = ApiCache {transitEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "Ttl" ApiCache where
  type PropertyType "Ttl" ApiCache = Value Prelude.Double
  set newValue ApiCache {..} = ApiCache {ttl = newValue, ..}
instance Property "Type" ApiCache where
  type PropertyType "Type" ApiCache = Value Prelude.Text
  set newValue ApiCache {..} = ApiCache {type' = newValue, ..}