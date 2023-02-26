module Stratosphere.AppSync.Resolver.CachingConfigProperty (
        CachingConfigProperty(..), mkCachingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CachingConfigProperty
  = CachingConfigProperty {cachingKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                           ttl :: (Value Prelude.Double)}
mkCachingConfigProperty ::
  Value Prelude.Double -> CachingConfigProperty
mkCachingConfigProperty ttl
  = CachingConfigProperty {ttl = ttl, cachingKeys = Prelude.Nothing}
instance ToResourceProperties CachingConfigProperty where
  toResourceProperties CachingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Resolver.CachingConfig",
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