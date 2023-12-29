module Stratosphere.QuickSight.Dashboard.SheetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SheetProperty :: Prelude.Type
instance ToResourceProperties SheetProperty
instance Prelude.Eq SheetProperty
instance Prelude.Show SheetProperty
instance JSON.ToJSON SheetProperty