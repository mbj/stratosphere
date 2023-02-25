module Stratosphere.AmplifyUIBuilder.Form.ValueMappingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ValueMappingProperty :: Prelude.Type
instance ToResourceProperties ValueMappingProperty
instance JSON.ToJSON ValueMappingProperty