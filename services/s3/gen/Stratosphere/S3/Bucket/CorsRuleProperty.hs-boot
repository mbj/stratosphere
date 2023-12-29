module Stratosphere.S3.Bucket.CorsRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CorsRuleProperty :: Prelude.Type
instance ToResourceProperties CorsRuleProperty
instance Prelude.Eq CorsRuleProperty
instance Prelude.Show CorsRuleProperty
instance JSON.ToJSON CorsRuleProperty