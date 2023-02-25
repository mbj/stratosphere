module Stratosphere.AppSync.ApiCache (
        ApiCache(..), mkApiCache
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiCache
  = ApiCache {apiCachingBehavior :: (Value Prelude.Text),
              apiId :: (Value Prelude.Text),
              atRestEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              transitEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              ttl :: (Value Prelude.Double),
              type' :: (Value Prelude.Text)}
mkApiCache ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> Value Prelude.Text -> ApiCache
mkApiCache apiCachingBehavior apiId ttl type'
  = ApiCache
      {apiCachingBehavior = apiCachingBehavior, apiId = apiId, ttl = ttl,
       type' = type', atRestEncryptionEnabled = Prelude.Nothing,
       transitEncryptionEnabled = Prelude.Nothing}
instance ToResourceProperties ApiCache where
  toResourceProperties ApiCache {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ApiCache",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiCachingBehavior" JSON..= apiCachingBehavior,
                            "ApiId" JSON..= apiId, "Ttl" JSON..= ttl, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AtRestEncryptionEnabled"
                                 Prelude.<$> atRestEncryptionEnabled,
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