module Stratosphere.FSx.Volume.NfsExportsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NfsExportsProperty :: Prelude.Type
instance ToResourceProperties NfsExportsProperty
instance JSON.ToJSON NfsExportsProperty