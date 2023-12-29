module Stratosphere.NetworkManager.Link.BandwidthProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BandwidthProperty :: Prelude.Type
instance ToResourceProperties BandwidthProperty
instance Prelude.Eq BandwidthProperty
instance Prelude.Show BandwidthProperty
instance JSON.ToJSON BandwidthProperty