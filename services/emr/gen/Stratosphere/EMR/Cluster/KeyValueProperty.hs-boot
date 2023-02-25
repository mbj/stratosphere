module Stratosphere.EMR.Cluster.KeyValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyValueProperty :: Prelude.Type
instance ToResourceProperties KeyValueProperty
instance JSON.ToJSON KeyValueProperty