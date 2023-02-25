module Stratosphere.Glue.Schema.RegistryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RegistryProperty :: Prelude.Type
instance ToResourceProperties RegistryProperty
instance JSON.ToJSON RegistryProperty