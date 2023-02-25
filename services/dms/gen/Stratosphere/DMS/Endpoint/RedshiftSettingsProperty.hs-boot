module Stratosphere.DMS.Endpoint.RedshiftSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RedshiftSettingsProperty :: Prelude.Type
instance ToResourceProperties RedshiftSettingsProperty
instance JSON.ToJSON RedshiftSettingsProperty