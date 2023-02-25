module Stratosphere.InspectorV2.Filter.FilterCriteriaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterCriteriaProperty :: Prelude.Type
instance ToResourceProperties FilterCriteriaProperty
instance JSON.ToJSON FilterCriteriaProperty