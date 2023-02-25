module Stratosphere.Batch.ComputeEnvironment.UpdatePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UpdatePolicyProperty :: Prelude.Type
instance ToResourceProperties UpdatePolicyProperty
instance JSON.ToJSON UpdatePolicyProperty