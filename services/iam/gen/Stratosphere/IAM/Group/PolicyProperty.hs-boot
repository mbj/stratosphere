module Stratosphere.IAM.Group.PolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyProperty :: Prelude.Type
instance ToResourceProperties PolicyProperty
instance JSON.ToJSON PolicyProperty