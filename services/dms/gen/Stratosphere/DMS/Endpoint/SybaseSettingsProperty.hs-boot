module Stratosphere.DMS.Endpoint.SybaseSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SybaseSettingsProperty :: Prelude.Type
instance ToResourceProperties SybaseSettingsProperty
instance JSON.ToJSON SybaseSettingsProperty