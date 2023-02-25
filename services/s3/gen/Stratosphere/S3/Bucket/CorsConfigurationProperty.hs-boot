module Stratosphere.S3.Bucket.CorsConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CorsConfigurationProperty :: Prelude.Type
instance ToResourceProperties CorsConfigurationProperty
instance JSON.ToJSON CorsConfigurationProperty