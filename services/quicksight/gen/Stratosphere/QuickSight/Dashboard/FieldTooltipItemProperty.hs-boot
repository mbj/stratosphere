module Stratosphere.QuickSight.Dashboard.FieldTooltipItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldTooltipItemProperty :: Prelude.Type
instance ToResourceProperties FieldTooltipItemProperty
instance JSON.ToJSON FieldTooltipItemProperty