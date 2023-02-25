module Stratosphere.QuickSight.DataSource.SslPropertiesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SslPropertiesProperty :: Prelude.Type
instance ToResourceProperties SslPropertiesProperty
instance JSON.ToJSON SslPropertiesProperty