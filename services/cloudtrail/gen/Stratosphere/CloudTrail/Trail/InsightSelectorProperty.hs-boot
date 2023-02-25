module Stratosphere.CloudTrail.Trail.InsightSelectorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InsightSelectorProperty :: Prelude.Type
instance ToResourceProperties InsightSelectorProperty
instance JSON.ToJSON InsightSelectorProperty