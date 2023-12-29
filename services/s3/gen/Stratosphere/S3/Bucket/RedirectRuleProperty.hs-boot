module Stratosphere.S3.Bucket.RedirectRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RedirectRuleProperty :: Prelude.Type
instance ToResourceProperties RedirectRuleProperty
instance Prelude.Eq RedirectRuleProperty
instance Prelude.Show RedirectRuleProperty
instance JSON.ToJSON RedirectRuleProperty