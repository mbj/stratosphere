module Stratosphere.Lightsail.Distribution.CacheSettingsProperty (
        module Exports, CacheSettingsProperty(..), mkCacheSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.CookieObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.HeaderObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Distribution.QueryStringObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheSettingsProperty
  = CacheSettingsProperty {allowedHTTPMethods :: (Prelude.Maybe (Value Prelude.Text)),
                           cachedHTTPMethods :: (Prelude.Maybe (Value Prelude.Text)),
                           defaultTTL :: (Prelude.Maybe (Value Prelude.Integer)),
                           forwardedCookies :: (Prelude.Maybe CookieObjectProperty),
                           forwardedHeaders :: (Prelude.Maybe HeaderObjectProperty),
                           forwardedQueryStrings :: (Prelude.Maybe QueryStringObjectProperty),
                           maximumTTL :: (Prelude.Maybe (Value Prelude.Integer)),
                           minimumTTL :: (Prelude.Maybe (Value Prelude.Integer))}
mkCacheSettingsProperty :: CacheSettingsProperty
mkCacheSettingsProperty
  = CacheSettingsProperty
      {allowedHTTPMethods = Prelude.Nothing,
       cachedHTTPMethods = Prelude.Nothing, defaultTTL = Prelude.Nothing,
       forwardedCookies = Prelude.Nothing,
       forwardedHeaders = Prelude.Nothing,
       forwardedQueryStrings = Prelude.Nothing,
       maximumTTL = Prelude.Nothing, minimumTTL = Prelude.Nothing}
instance ToResourceProperties CacheSettingsProperty where
  toResourceProperties CacheSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CacheSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedHTTPMethods" Prelude.<$> allowedHTTPMethods,
                            (JSON..=) "CachedHTTPMethods" Prelude.<$> cachedHTTPMethods,
                            (JSON..=) "DefaultTTL" Prelude.<$> defaultTTL,
                            (JSON..=) "ForwardedCookies" Prelude.<$> forwardedCookies,
                            (JSON..=) "ForwardedHeaders" Prelude.<$> forwardedHeaders,
                            (JSON..=) "ForwardedQueryStrings"
                              Prelude.<$> forwardedQueryStrings,
                            (JSON..=) "MaximumTTL" Prelude.<$> maximumTTL,
                            (JSON..=) "MinimumTTL" Prelude.<$> minimumTTL])}
instance JSON.ToJSON CacheSettingsProperty where
  toJSON CacheSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedHTTPMethods" Prelude.<$> allowedHTTPMethods,
               (JSON..=) "CachedHTTPMethods" Prelude.<$> cachedHTTPMethods,
               (JSON..=) "DefaultTTL" Prelude.<$> defaultTTL,
               (JSON..=) "ForwardedCookies" Prelude.<$> forwardedCookies,
               (JSON..=) "ForwardedHeaders" Prelude.<$> forwardedHeaders,
               (JSON..=) "ForwardedQueryStrings"
                 Prelude.<$> forwardedQueryStrings,
               (JSON..=) "MaximumTTL" Prelude.<$> maximumTTL,
               (JSON..=) "MinimumTTL" Prelude.<$> minimumTTL]))
instance Property "AllowedHTTPMethods" CacheSettingsProperty where
  type PropertyType "AllowedHTTPMethods" CacheSettingsProperty = Value Prelude.Text
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty
        {allowedHTTPMethods = Prelude.pure newValue, ..}
instance Property "CachedHTTPMethods" CacheSettingsProperty where
  type PropertyType "CachedHTTPMethods" CacheSettingsProperty = Value Prelude.Text
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty
        {cachedHTTPMethods = Prelude.pure newValue, ..}
instance Property "DefaultTTL" CacheSettingsProperty where
  type PropertyType "DefaultTTL" CacheSettingsProperty = Value Prelude.Integer
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty {defaultTTL = Prelude.pure newValue, ..}
instance Property "ForwardedCookies" CacheSettingsProperty where
  type PropertyType "ForwardedCookies" CacheSettingsProperty = CookieObjectProperty
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty
        {forwardedCookies = Prelude.pure newValue, ..}
instance Property "ForwardedHeaders" CacheSettingsProperty where
  type PropertyType "ForwardedHeaders" CacheSettingsProperty = HeaderObjectProperty
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty
        {forwardedHeaders = Prelude.pure newValue, ..}
instance Property "ForwardedQueryStrings" CacheSettingsProperty where
  type PropertyType "ForwardedQueryStrings" CacheSettingsProperty = QueryStringObjectProperty
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty
        {forwardedQueryStrings = Prelude.pure newValue, ..}
instance Property "MaximumTTL" CacheSettingsProperty where
  type PropertyType "MaximumTTL" CacheSettingsProperty = Value Prelude.Integer
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty {maximumTTL = Prelude.pure newValue, ..}
instance Property "MinimumTTL" CacheSettingsProperty where
  type PropertyType "MinimumTTL" CacheSettingsProperty = Value Prelude.Integer
  set newValue CacheSettingsProperty {..}
    = CacheSettingsProperty {minimumTTL = Prelude.pure newValue, ..}