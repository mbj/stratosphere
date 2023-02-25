module Stratosphere.QuickSight.Theme.SheetStyleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SheetStyleProperty :: Prelude.Type
instance ToResourceProperties SheetStyleProperty
instance JSON.ToJSON SheetStyleProperty