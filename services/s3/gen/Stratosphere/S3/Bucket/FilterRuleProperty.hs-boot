module Stratosphere.S3.Bucket.FilterRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterRuleProperty :: Prelude.Type
instance ToResourceProperties FilterRuleProperty
instance JSON.ToJSON FilterRuleProperty