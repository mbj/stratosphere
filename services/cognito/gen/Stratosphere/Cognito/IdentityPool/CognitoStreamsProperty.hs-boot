module Stratosphere.Cognito.IdentityPool.CognitoStreamsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CognitoStreamsProperty :: Prelude.Type
instance ToResourceProperties CognitoStreamsProperty
instance JSON.ToJSON CognitoStreamsProperty