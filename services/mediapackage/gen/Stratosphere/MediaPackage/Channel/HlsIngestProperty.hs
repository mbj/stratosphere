module Stratosphere.MediaPackage.Channel.HlsIngestProperty (
        module Exports, HlsIngestProperty(..), mkHlsIngestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.Channel.IngestEndpointProperty as Exports
import Stratosphere.ResourceProperties
data HlsIngestProperty
  = HlsIngestProperty {ingestEndpoints :: (Prelude.Maybe [IngestEndpointProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsIngestProperty :: HlsIngestProperty
mkHlsIngestProperty
  = HlsIngestProperty {ingestEndpoints = Prelude.Nothing}
instance ToResourceProperties HlsIngestProperty where
  toResourceProperties HlsIngestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::Channel.HlsIngest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ingestEndpoints" Prelude.<$> ingestEndpoints])}
instance JSON.ToJSON HlsIngestProperty where
  toJSON HlsIngestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ingestEndpoints" Prelude.<$> ingestEndpoints]))
instance Property "ingestEndpoints" HlsIngestProperty where
  type PropertyType "ingestEndpoints" HlsIngestProperty = [IngestEndpointProperty]
  set newValue HlsIngestProperty {}
    = HlsIngestProperty {ingestEndpoints = Prelude.pure newValue, ..}