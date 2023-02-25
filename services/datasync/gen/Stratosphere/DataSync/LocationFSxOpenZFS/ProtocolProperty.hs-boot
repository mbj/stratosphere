module Stratosphere.DataSync.LocationFSxOpenZFS.ProtocolProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProtocolProperty :: Prelude.Type
instance ToResourceProperties ProtocolProperty
instance JSON.ToJSON ProtocolProperty