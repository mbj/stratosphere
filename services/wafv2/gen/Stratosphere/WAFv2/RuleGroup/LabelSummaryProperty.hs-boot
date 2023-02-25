module Stratosphere.WAFv2.RuleGroup.LabelSummaryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LabelSummaryProperty :: Prelude.Type
instance ToResourceProperties LabelSummaryProperty
instance JSON.ToJSON LabelSummaryProperty