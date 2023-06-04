module Stratosphere.QuickSight.Analysis.TooltipItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TooltipItemProperty :: Prelude.Type
instance ToResourceProperties TooltipItemProperty
instance JSON.ToJSON TooltipItemProperty