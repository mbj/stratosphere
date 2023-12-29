module Stratosphere.FSx.FileSystem.NfsExportsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NfsExportsProperty :: Prelude.Type
instance ToResourceProperties NfsExportsProperty
instance Prelude.Eq NfsExportsProperty
instance Prelude.Show NfsExportsProperty
instance JSON.ToJSON NfsExportsProperty