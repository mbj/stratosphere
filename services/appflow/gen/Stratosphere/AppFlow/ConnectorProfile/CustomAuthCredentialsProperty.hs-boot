module Stratosphere.AppFlow.ConnectorProfile.CustomAuthCredentialsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomAuthCredentialsProperty :: Prelude.Type
instance ToResourceProperties CustomAuthCredentialsProperty
instance JSON.ToJSON CustomAuthCredentialsProperty