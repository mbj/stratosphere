module Stratosphere.AppStream.ImageBuilder.AccessEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessEndpointProperty :: Prelude.Type
instance ToResourceProperties AccessEndpointProperty
instance JSON.ToJSON AccessEndpointProperty