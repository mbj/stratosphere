module Stratosphere.Events.Connection.OAuthParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OAuthParametersProperty :: Prelude.Type
instance ToResourceProperties OAuthParametersProperty
instance JSON.ToJSON OAuthParametersProperty