module Stratosphere.S3.Bucket.CorsRuleProperty (
        CorsRuleProperty(..), mkCorsRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CorsRuleProperty
  = CorsRuleProperty {allowedHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                      allowedMethods :: (ValueList Prelude.Text),
                      allowedOrigins :: (ValueList Prelude.Text),
                      exposedHeaders :: (Prelude.Maybe (ValueList Prelude.Text)),
                      id :: (Prelude.Maybe (Value Prelude.Text)),
                      maxAge :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCorsRuleProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> CorsRuleProperty
mkCorsRuleProperty allowedMethods allowedOrigins
  = CorsRuleProperty
      {allowedMethods = allowedMethods, allowedOrigins = allowedOrigins,
       allowedHeaders = Prelude.Nothing, exposedHeaders = Prelude.Nothing,
       id = Prelude.Nothing, maxAge = Prelude.Nothing}
instance ToResourceProperties CorsRuleProperty where
  toResourceProperties CorsRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.CorsRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedMethods" JSON..= allowedMethods,
                            "AllowedOrigins" JSON..= allowedOrigins]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowedHeaders" Prelude.<$> allowedHeaders,
                               (JSON..=) "ExposedHeaders" Prelude.<$> exposedHeaders,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "MaxAge" Prelude.<$> maxAge]))}
instance JSON.ToJSON CorsRuleProperty where
  toJSON CorsRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedMethods" JSON..= allowedMethods,
               "AllowedOrigins" JSON..= allowedOrigins]
              (Prelude.catMaybes
                 [(JSON..=) "AllowedHeaders" Prelude.<$> allowedHeaders,
                  (JSON..=) "ExposedHeaders" Prelude.<$> exposedHeaders,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "MaxAge" Prelude.<$> maxAge])))
instance Property "AllowedHeaders" CorsRuleProperty where
  type PropertyType "AllowedHeaders" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedHeaders = Prelude.pure newValue, ..}
instance Property "AllowedMethods" CorsRuleProperty where
  type PropertyType "AllowedMethods" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedMethods = newValue, ..}
instance Property "AllowedOrigins" CorsRuleProperty where
  type PropertyType "AllowedOrigins" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {allowedOrigins = newValue, ..}
instance Property "ExposedHeaders" CorsRuleProperty where
  type PropertyType "ExposedHeaders" CorsRuleProperty = ValueList Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {exposedHeaders = Prelude.pure newValue, ..}
instance Property "Id" CorsRuleProperty where
  type PropertyType "Id" CorsRuleProperty = Value Prelude.Text
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {id = Prelude.pure newValue, ..}
instance Property "MaxAge" CorsRuleProperty where
  type PropertyType "MaxAge" CorsRuleProperty = Value Prelude.Integer
  set newValue CorsRuleProperty {..}
    = CorsRuleProperty {maxAge = Prelude.pure newValue, ..}