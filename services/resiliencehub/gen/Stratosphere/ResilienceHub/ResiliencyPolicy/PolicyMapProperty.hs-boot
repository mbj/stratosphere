module Stratosphere.ResilienceHub.ResiliencyPolicy.PolicyMapProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyMapProperty :: Prelude.Type
instance ToResourceProperties PolicyMapProperty
instance Prelude.Eq PolicyMapProperty
instance Prelude.Show PolicyMapProperty
instance JSON.ToJSON PolicyMapProperty