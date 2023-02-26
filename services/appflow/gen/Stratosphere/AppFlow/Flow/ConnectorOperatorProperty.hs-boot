module Stratosphere.AppFlow.Flow.ConnectorOperatorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConnectorOperatorProperty :: Prelude.Type
instance ToResourceProperties ConnectorOperatorProperty
instance JSON.ToJSON ConnectorOperatorProperty