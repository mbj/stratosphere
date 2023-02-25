module Stratosphere.Events.Rule.SqsParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SqsParametersProperty :: Prelude.Type
instance ToResourceProperties SqsParametersProperty
instance JSON.ToJSON SqsParametersProperty