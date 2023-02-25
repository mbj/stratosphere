module Stratosphere.QuickSight.Analysis.SheetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SheetProperty :: Prelude.Type
instance ToResourceProperties SheetProperty
instance JSON.ToJSON SheetProperty