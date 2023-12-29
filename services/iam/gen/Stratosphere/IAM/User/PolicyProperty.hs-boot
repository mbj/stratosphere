module Stratosphere.IAM.User.PolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyProperty :: Prelude.Type
instance ToResourceProperties PolicyProperty
instance Prelude.Eq PolicyProperty
instance Prelude.Show PolicyProperty
instance JSON.ToJSON PolicyProperty