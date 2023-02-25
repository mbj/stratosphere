module Stratosphere.Lightsail.Container.PublicEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PublicEndpointProperty :: Prelude.Type
instance ToResourceProperties PublicEndpointProperty
instance JSON.ToJSON PublicEndpointProperty