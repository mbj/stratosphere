module Stratosphere.CloudFront.ResponseHeadersPolicy.CorsConfigProperty (
        module Exports, CorsConfigProperty(..), mkCorsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowHeadersProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowMethodsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlAllowOriginsProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ResponseHeadersPolicy.AccessControlExposeHeadersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CorsConfigProperty
  = CorsConfigProperty {accessControlAllowCredentials :: (Value Prelude.Bool),
                        accessControlAllowHeaders :: AccessControlAllowHeadersProperty,
                        accessControlAllowMethods :: AccessControlAllowMethodsProperty,
                        accessControlAllowOrigins :: AccessControlAllowOriginsProperty,
                        accessControlExposeHeaders :: (Prelude.Maybe AccessControlExposeHeadersProperty),
                        accessControlMaxAgeSec :: (Prelude.Maybe (Value Prelude.Integer)),
                        originOverride :: (Value Prelude.Bool)}
mkCorsConfigProperty ::
  Value Prelude.Bool
  -> AccessControlAllowHeadersProperty
     -> AccessControlAllowMethodsProperty
        -> AccessControlAllowOriginsProperty
           -> Value Prelude.Bool -> CorsConfigProperty
mkCorsConfigProperty
  accessControlAllowCredentials
  accessControlAllowHeaders
  accessControlAllowMethods
  accessControlAllowOrigins
  originOverride
  = CorsConfigProperty
      {accessControlAllowCredentials = accessControlAllowCredentials,
       accessControlAllowHeaders = accessControlAllowHeaders,
       accessControlAllowMethods = accessControlAllowMethods,
       accessControlAllowOrigins = accessControlAllowOrigins,
       originOverride = originOverride,
       accessControlExposeHeaders = Prelude.Nothing,
       accessControlMaxAgeSec = Prelude.Nothing}
instance ToResourceProperties CorsConfigProperty where
  toResourceProperties CorsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ResponseHeadersPolicy.CorsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessControlAllowCredentials"
                              JSON..= accessControlAllowCredentials,
                            "AccessControlAllowHeaders" JSON..= accessControlAllowHeaders,
                            "AccessControlAllowMethods" JSON..= accessControlAllowMethods,
                            "AccessControlAllowOrigins" JSON..= accessControlAllowOrigins,
                            "OriginOverride" JSON..= originOverride]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessControlExposeHeaders"
                                 Prelude.<$> accessControlExposeHeaders,
                               (JSON..=) "AccessControlMaxAgeSec"
                                 Prelude.<$> accessControlMaxAgeSec]))}
instance JSON.ToJSON CorsConfigProperty where
  toJSON CorsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessControlAllowCredentials"
                 JSON..= accessControlAllowCredentials,
               "AccessControlAllowHeaders" JSON..= accessControlAllowHeaders,
               "AccessControlAllowMethods" JSON..= accessControlAllowMethods,
               "AccessControlAllowOrigins" JSON..= accessControlAllowOrigins,
               "OriginOverride" JSON..= originOverride]
              (Prelude.catMaybes
                 [(JSON..=) "AccessControlExposeHeaders"
                    Prelude.<$> accessControlExposeHeaders,
                  (JSON..=) "AccessControlMaxAgeSec"
                    Prelude.<$> accessControlMaxAgeSec])))
instance Property "AccessControlAllowCredentials" CorsConfigProperty where
  type PropertyType "AccessControlAllowCredentials" CorsConfigProperty = Value Prelude.Bool
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty {accessControlAllowCredentials = newValue, ..}
instance Property "AccessControlAllowHeaders" CorsConfigProperty where
  type PropertyType "AccessControlAllowHeaders" CorsConfigProperty = AccessControlAllowHeadersProperty
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty {accessControlAllowHeaders = newValue, ..}
instance Property "AccessControlAllowMethods" CorsConfigProperty where
  type PropertyType "AccessControlAllowMethods" CorsConfigProperty = AccessControlAllowMethodsProperty
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty {accessControlAllowMethods = newValue, ..}
instance Property "AccessControlAllowOrigins" CorsConfigProperty where
  type PropertyType "AccessControlAllowOrigins" CorsConfigProperty = AccessControlAllowOriginsProperty
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty {accessControlAllowOrigins = newValue, ..}
instance Property "AccessControlExposeHeaders" CorsConfigProperty where
  type PropertyType "AccessControlExposeHeaders" CorsConfigProperty = AccessControlExposeHeadersProperty
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty
        {accessControlExposeHeaders = Prelude.pure newValue, ..}
instance Property "AccessControlMaxAgeSec" CorsConfigProperty where
  type PropertyType "AccessControlMaxAgeSec" CorsConfigProperty = Value Prelude.Integer
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty
        {accessControlMaxAgeSec = Prelude.pure newValue, ..}
instance Property "OriginOverride" CorsConfigProperty where
  type PropertyType "OriginOverride" CorsConfigProperty = Value Prelude.Bool
  set newValue CorsConfigProperty {..}
    = CorsConfigProperty {originOverride = newValue, ..}