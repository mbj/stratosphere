module Stratosphere.S3.Bucket.ObjectLockRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ObjectLockRuleProperty :: Prelude.Type
instance ToResourceProperties ObjectLockRuleProperty
instance Prelude.Eq ObjectLockRuleProperty
instance Prelude.Show ObjectLockRuleProperty
instance JSON.ToJSON ObjectLockRuleProperty