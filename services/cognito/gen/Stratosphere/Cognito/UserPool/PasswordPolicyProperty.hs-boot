module Stratosphere.Cognito.UserPool.PasswordPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PasswordPolicyProperty :: Prelude.Type
instance ToResourceProperties PasswordPolicyProperty
instance JSON.ToJSON PasswordPolicyProperty