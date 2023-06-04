module Stratosphere.QuickSight.Topic.RangeConstantProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RangeConstantProperty :: Prelude.Type
instance ToResourceProperties RangeConstantProperty
instance JSON.ToJSON RangeConstantProperty