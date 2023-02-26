module Stratosphere.MediaPackage.Channel.IngestEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IngestEndpointProperty :: Prelude.Type
instance ToResourceProperties IngestEndpointProperty
instance JSON.ToJSON IngestEndpointProperty