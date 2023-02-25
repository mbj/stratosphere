module Stratosphere.DataBrew.Dataset.ExcelOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExcelOptionsProperty :: Prelude.Type
instance ToResourceProperties ExcelOptionsProperty
instance JSON.ToJSON ExcelOptionsProperty