module Stratosphere.DataSync.LocationHDFS.NameNodeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NameNodeProperty :: Prelude.Type
instance ToResourceProperties NameNodeProperty
instance JSON.ToJSON NameNodeProperty