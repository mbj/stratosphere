module Stratosphere.MediaPackageV2.Channel.IngestEndpointProperty (
        IngestEndpointProperty(..), mkIngestEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngestEndpointProperty
  = IngestEndpointProperty {id :: (Prelude.Maybe (Value Prelude.Text)),
                            url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngestEndpointProperty :: IngestEndpointProperty
mkIngestEndpointProperty
  = IngestEndpointProperty
      {id = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties IngestEndpointProperty where
  toResourceProperties IngestEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::Channel.IngestEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Id" Prelude.<$> id, (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON IngestEndpointProperty where
  toJSON IngestEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Id" Prelude.<$> id, (JSON..=) "Url" Prelude.<$> url]))
instance Property "Id" IngestEndpointProperty where
  type PropertyType "Id" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {id = Prelude.pure newValue, ..}
instance Property "Url" IngestEndpointProperty where
  type PropertyType "Url" IngestEndpointProperty = Value Prelude.Text
  set newValue IngestEndpointProperty {..}
    = IngestEndpointProperty {url = Prelude.pure newValue, ..}