module Stratosphere.MSK.Cluster.FirehoseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FirehoseProperty :: Prelude.Type
instance ToResourceProperties FirehoseProperty
instance JSON.ToJSON FirehoseProperty