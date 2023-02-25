module Stratosphere.S3.Bucket.CorsConfigurationProperty (
        module Exports, CorsConfigurationProperty(..),
        mkCorsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.CorsRuleProperty as Exports
import Stratosphere.ResourceProperties
data CorsConfigurationProperty
  = CorsConfigurationProperty {corsRules :: [CorsRuleProperty]}
mkCorsConfigurationProperty ::
  [CorsRuleProperty] -> CorsConfigurationProperty
mkCorsConfigurationProperty corsRules
  = CorsConfigurationProperty {corsRules = corsRules}
instance ToResourceProperties CorsConfigurationProperty where
  toResourceProperties CorsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.CorsConfiguration",
         properties = ["CorsRules" JSON..= corsRules]}
instance JSON.ToJSON CorsConfigurationProperty where
  toJSON CorsConfigurationProperty {..}
    = JSON.object ["CorsRules" JSON..= corsRules]
instance Property "CorsRules" CorsConfigurationProperty where
  type PropertyType "CorsRules" CorsConfigurationProperty = [CorsRuleProperty]
  set newValue CorsConfigurationProperty {}
    = CorsConfigurationProperty {corsRules = newValue, ..}