module Stratosphere.BCMDataExports.Export.ExportProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExportProperty :: Prelude.Type
instance ToResourceProperties ExportProperty
instance Prelude.Eq ExportProperty
instance Prelude.Show ExportProperty
instance JSON.ToJSON ExportProperty