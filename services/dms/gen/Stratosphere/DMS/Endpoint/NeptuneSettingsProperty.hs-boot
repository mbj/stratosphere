module Stratosphere.DMS.Endpoint.NeptuneSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NeptuneSettingsProperty :: Prelude.Type
instance ToResourceProperties NeptuneSettingsProperty
instance JSON.ToJSON NeptuneSettingsProperty