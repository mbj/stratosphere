module Stratosphere.MediaStore.Container.CorsRuleProperty (
        CorsRuleProperty(..), mkCorsRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CorsRuleProperty
  = CorsRuleProperty {allowedHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                      allowedMethods :: (Prelude.Maybe (ValueList Prelude.Text)),
                      allowedOrigins :: (Prelude.Maybe (ValueList Prelude.Text)),
                      exposeHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                      maxAgeSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCorsRuleProperty :: CorsRuleProperty
mkCorsRuleProperty
  = CorsRuleProperty
      {allowedHeaders = Prelude.Nothing,
       allowedMethods = Prelude.Nothing, allowedOrigins = Prelude.Nothing,
       exposeHeaders = Prelude.Nothing, maxAgeSeconds = Prelude.Nothing}
instance ToResourceProperties CorsRuleProperty where
  toResourceProperties CorsRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaStore::Container.CorsRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedHeaders" Prelude.<$> allowedHeaders,
                            (JSON..=) "AllowedMethods" Prelude.<$> allowedMethods,
                            (JSON..=) "AllowedOrigins" Prelude.<$> allowedOrigins,
                            (JSON..=) "ExposeHeaders" Prelude.<$> exposeHeaders,
                            (JSON..=) "MaxAgeSeconds" Prelude.<$> maxAgeSeconds])}
instance JSON.ToJSON CorsRuleProperty where
  toJSON CorsRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedHeaders" Prelude.<$> allowedHeaders,
               (JSON..=) "AllowedMethods" Prelude.<$> allowedMethods,
               (JSON..=) "AllowedOrigins" Prelude.<$> allowedOrigins,
               (JSON..=) "ExposeHeaders" Prelude.<$> exposeHeaders,
               (JSON..=) "MaxAgeSeconds" Prelude.<$> maxAgeSeconds]))
instance Property "AllowedHeaders" CorsRuleProperty where
  type PropertyType "AllowedHeaders" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedHeaders = Prelude.pure newValue, ..}
instance Property "AllowedMethods" CorsRuleProperty where
  type PropertyType "AllowedMethods" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedMethods = Prelude.pure newValue, ..}
instance Property "AllowedOrigins" CorsRuleProperty where
  type PropertyType "AllowedOrigins" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedOrigins = Prelude.pure newValue, ..}
instance Property "ExposeHeaders" CorsRuleProperty where
  type PropertyType "ExposeHeaders" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {exposeHeaders = Prelude.pure newValue, ..}
instance Property "MaxAgeSeconds" CorsRuleProperty where
  type PropertyType "MaxAgeSeconds" CorsRuleProperty = Value Prelude.Integer
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {maxAgeSeconds = Prelude.pure newValue, ..}