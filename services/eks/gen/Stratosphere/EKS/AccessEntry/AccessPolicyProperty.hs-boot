module Stratosphere.EKS.AccessEntry.AccessPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessPolicyProperty :: Prelude.Type
instance ToResourceProperties AccessPolicyProperty
instance Prelude.Eq AccessPolicyProperty
instance Prelude.Show AccessPolicyProperty
instance JSON.ToJSON AccessPolicyProperty