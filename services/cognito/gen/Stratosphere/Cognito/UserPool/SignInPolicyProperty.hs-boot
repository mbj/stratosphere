module Stratosphere.Cognito.UserPool.SignInPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SignInPolicyProperty :: Prelude.Type
instance ToResourceProperties SignInPolicyProperty
instance Prelude.Eq SignInPolicyProperty
instance Prelude.Show SignInPolicyProperty
instance JSON.ToJSON SignInPolicyProperty