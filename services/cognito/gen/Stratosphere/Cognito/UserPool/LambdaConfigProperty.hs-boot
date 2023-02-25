module Stratosphere.Cognito.UserPool.LambdaConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LambdaConfigProperty :: Prelude.Type
instance ToResourceProperties LambdaConfigProperty
instance JSON.ToJSON LambdaConfigProperty