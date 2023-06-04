module Stratosphere.QuickSight.Dashboard.CategoryFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CategoryFilterProperty :: Prelude.Type
instance ToResourceProperties CategoryFilterProperty
instance JSON.ToJSON CategoryFilterProperty