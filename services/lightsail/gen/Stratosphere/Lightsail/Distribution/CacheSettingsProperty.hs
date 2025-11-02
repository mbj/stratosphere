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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html>
    CacheSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-allowedhttpmethods>
                           allowedHTTPMethods :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-cachedhttpmethods>
                           cachedHTTPMethods :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-defaultttl>
                           defaultTTL :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedcookies>
                           forwardedCookies :: (Prelude.Maybe CookieObjectProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedheaders>
                           forwardedHeaders :: (Prelude.Maybe HeaderObjectProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-forwardedquerystrings>
                           forwardedQueryStrings :: (Prelude.Maybe QueryStringObjectProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-maximumttl>
                           maximumTTL :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-cachesettings.html#cfn-lightsail-distribution-cachesettings-minimumttl>
                           minimumTTL :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheSettingsProperty :: CacheSettingsProperty
mkCacheSettingsProperty
  = CacheSettingsProperty
      {haddock_workaround_ = (), allowedHTTPMethods = Prelude.Nothing,
       cachedHTTPMethods = Prelude.Nothing, defaultTTL = Prelude.Nothing,
       forwardedCookies = Prelude.Nothing,
       forwardedHeaders = Prelude.Nothing,
       forwardedQueryStrings = Prelude.Nothing,
       maximumTTL = Prelude.Nothing, minimumTTL = Prelude.Nothing}
instance ToResourceProperties CacheSettingsProperty where
  toResourceProperties CacheSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.CacheSettings",
         supportsTags = Prelude.False,
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