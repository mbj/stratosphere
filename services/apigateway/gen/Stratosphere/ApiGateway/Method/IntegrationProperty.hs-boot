module Stratosphere.ApiGateway.Method.IntegrationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IntegrationProperty :: Prelude.Type
instance ToResourceProperties IntegrationProperty
instance Prelude.Eq IntegrationProperty
instance Prelude.Show IntegrationProperty
instance JSON.ToJSON IntegrationProperty