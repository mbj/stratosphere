module Stratosphere.Location.Map.MapConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MapConfigurationProperty :: Prelude.Type
instance ToResourceProperties MapConfigurationProperty
instance JSON.ToJSON MapConfigurationProperty