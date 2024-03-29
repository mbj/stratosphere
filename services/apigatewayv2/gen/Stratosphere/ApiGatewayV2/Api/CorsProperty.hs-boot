module Stratosphere.ApiGatewayV2.Api.CorsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CorsProperty :: Prelude.Type
instance ToResourceProperties CorsProperty
instance Prelude.Eq CorsProperty
instance Prelude.Show CorsProperty
instance JSON.ToJSON CorsProperty