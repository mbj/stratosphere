module Stratosphere.DataBrew.Dataset.FilterExpressionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterExpressionProperty :: Prelude.Type
instance ToResourceProperties FilterExpressionProperty
instance JSON.ToJSON FilterExpressionProperty