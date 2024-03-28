module Stratosphere.Lambda.Version.RuntimePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RuntimePolicyProperty :: Prelude.Type
instance ToResourceProperties RuntimePolicyProperty
instance Prelude.Eq RuntimePolicyProperty
instance Prelude.Show RuntimePolicyProperty
instance JSON.ToJSON RuntimePolicyProperty