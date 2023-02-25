module Stratosphere.Cognito.UserPool.PoliciesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PoliciesProperty :: Prelude.Type
instance ToResourceProperties PoliciesProperty
instance JSON.ToJSON PoliciesProperty