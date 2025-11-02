module Stratosphere.S3.Bucket.CorsConfigurationProperty (
        module Exports, CorsConfigurationProperty(..),
        mkCorsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.CorsRuleProperty as Exports
import Stratosphere.ResourceProperties
data CorsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-corsconfiguration.html>
    CorsConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-corsconfiguration.html#cfn-s3-bucket-corsconfiguration-corsrules>
                               corsRules :: [CorsRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCorsConfigurationProperty ::
  [CorsRuleProperty] -> CorsConfigurationProperty
mkCorsConfigurationProperty corsRules
  = CorsConfigurationProperty
      {haddock_workaround_ = (), corsRules = corsRules}
instance ToResourceProperties CorsConfigurationProperty where
  toResourceProperties CorsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.CorsConfiguration",
         supportsTags = Prelude.False,
         properties = ["CorsRules" JSON..= corsRules]}
instance JSON.ToJSON CorsConfigurationProperty where
  toJSON CorsConfigurationProperty {..}
    = JSON.object ["CorsRules" JSON..= corsRules]
instance Property "CorsRules" CorsConfigurationProperty where
  type PropertyType "CorsRules" CorsConfigurationProperty = [CorsRuleProperty]
  set newValue CorsConfigurationProperty {..}
    = CorsConfigurationProperty {corsRules = newValue, ..}