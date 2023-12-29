module Stratosphere.Events.Rule.RetryPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetryPolicyProperty :: Prelude.Type
instance ToResourceProperties RetryPolicyProperty
instance Prelude.Eq RetryPolicyProperty
instance Prelude.Show RetryPolicyProperty
instance JSON.ToJSON RetryPolicyProperty