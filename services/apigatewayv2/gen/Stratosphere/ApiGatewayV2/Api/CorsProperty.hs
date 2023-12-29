module Stratosphere.ApiGatewayV2.Api.CorsProperty (
        CorsProperty(..), mkCorsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CorsProperty
  = CorsProperty {allowCredentials :: (Prelude.Maybe (Value Prelude.Bool)),
                  allowHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                  allowMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                  allowOrigins :: (Prelude.Maybe (ValueList Prelude.Text)),
                  exposeHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                  maxAge :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCorsProperty :: CorsProperty
mkCorsProperty
  = CorsProperty
      {allowCredentials = Prelude.Nothing,
       allowHeaders = Prelude.Nothing, allowMethods = Prelude.Nothing,
       allowOrigins = Prelude.Nothing, exposeHeaders = Prelude.Nothing,
       maxAge = Prelude.Nothing}
instance ToResourceProperties CorsProperty where
  toResourceProperties CorsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Api.Cors",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowCredentials" Prelude.<$> allowCredentials,
                            (JSON..=) "AllowHeaders" Prelude.<$> allowHeaders,
                            (JSON..=) "AllowMethods" Prelude.<$> allowMethods,
                            (JSON..=) "AllowOrigins" Prelude.<$> allowOrigins,
                            (JSON..=) "ExposeHeaders" Prelude.<$> exposeHeaders,
                            (JSON..=) "MaxAge" Prelude.<$> maxAge])}
instance JSON.ToJSON CorsProperty where
  toJSON CorsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowCredentials" Prelude.<$> allowCredentials,
               (JSON..=) "AllowHeaders" Prelude.<$> allowHeaders,
               (JSON..=) "AllowMethods" Prelude.<$> allowMethods,
               (JSON..=) "AllowOrigins" Prelude.<$> allowOrigins,
               (JSON..=) "ExposeHeaders" Prelude.<$> exposeHeaders,
               (JSON..=) "MaxAge" Prelude.<$> maxAge]))
instance Property "AllowCredentials" CorsProperty where
  type PropertyType "AllowCredentials" CorsProperty = Value Prelude.Bool
  set newValue CorsProperty {..}
    = CorsProperty {allowCredentials = Prelude.pure newValue, ..}
instance Property "AllowHeaders" CorsProperty where
  type PropertyType "AllowHeaders" CorsProperty = ValueList Prelude.Text
  set newValue CorsProperty {..}
    = CorsProperty {allowHeaders = Prelude.pure newValue, ..}
instance Property "AllowMethods" CorsProperty where
  type PropertyType "AllowMethods" CorsProperty = ValueList Prelude.Text
  set newValue CorsProperty {..}
    = CorsProperty {allowMethods = Prelude.pure newValue, ..}
instance Property "AllowOrigins" CorsProperty where
  type PropertyType "AllowOrigins" CorsProperty = ValueList Prelude.Text
  set newValue CorsProperty {..}
    = CorsProperty {allowOrigins = Prelude.pure newValue, ..}
instance Property "ExposeHeaders" CorsProperty where
  type PropertyType "ExposeHeaders" CorsProperty = ValueList Prelude.Text
  set newValue CorsProperty {..}
    = CorsProperty {exposeHeaders = Prelude.pure newValue, ..}
instance Property "MaxAge" CorsProperty where
  type PropertyType "MaxAge" CorsProperty = Value Prelude.Integer
  set newValue CorsProperty {..}
    = CorsProperty {maxAge = Prelude.pure newValue, ..}