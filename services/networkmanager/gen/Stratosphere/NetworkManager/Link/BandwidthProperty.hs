module Stratosphere.NetworkManager.Link.BandwidthProperty (
        BandwidthProperty(..), mkBandwidthProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BandwidthProperty
  = BandwidthProperty {downloadSpeed :: (Prelude.Maybe (Value Prelude.Integer)),
                       uploadSpeed :: (Prelude.Maybe (Value Prelude.Integer))}
mkBandwidthProperty :: BandwidthProperty
mkBandwidthProperty
  = BandwidthProperty
      {downloadSpeed = Prelude.Nothing, uploadSpeed = Prelude.Nothing}
instance ToResourceProperties BandwidthProperty where
  toResourceProperties BandwidthProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Link.Bandwidth",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DownloadSpeed" Prelude.<$> downloadSpeed,
                            (JSON..=) "UploadSpeed" Prelude.<$> uploadSpeed])}
instance JSON.ToJSON BandwidthProperty where
  toJSON BandwidthProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DownloadSpeed" Prelude.<$> downloadSpeed,
               (JSON..=) "UploadSpeed" Prelude.<$> uploadSpeed]))
instance Property "DownloadSpeed" BandwidthProperty where
  type PropertyType "DownloadSpeed" BandwidthProperty = Value Prelude.Integer
  set newValue BandwidthProperty {..}
    = BandwidthProperty {downloadSpeed = Prelude.pure newValue, ..}
instance Property "UploadSpeed" BandwidthProperty where
  type PropertyType "UploadSpeed" BandwidthProperty = Value Prelude.Integer
  set newValue BandwidthProperty {..}
    = BandwidthProperty {uploadSpeed = Prelude.pure newValue, ..}