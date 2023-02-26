module Stratosphere.Events.Connection.AuthParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AuthParametersProperty :: Prelude.Type
instance ToResourceProperties AuthParametersProperty
instance JSON.ToJSON AuthParametersProperty