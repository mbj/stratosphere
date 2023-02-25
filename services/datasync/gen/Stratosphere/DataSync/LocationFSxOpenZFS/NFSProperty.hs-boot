module Stratosphere.DataSync.LocationFSxOpenZFS.NFSProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NFSProperty :: Prelude.Type
instance ToResourceProperties NFSProperty
instance JSON.ToJSON NFSProperty