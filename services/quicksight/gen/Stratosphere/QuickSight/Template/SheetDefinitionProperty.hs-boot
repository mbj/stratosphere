module Stratosphere.QuickSight.Template.SheetDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SheetDefinitionProperty :: Prelude.Type
instance ToResourceProperties SheetDefinitionProperty
instance JSON.ToJSON SheetDefinitionProperty