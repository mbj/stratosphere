module Stratosphere.QuickSight.Dashboard.FilterGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterGroupProperty :: Prelude.Type
instance ToResourceProperties FilterGroupProperty
instance JSON.ToJSON FilterGroupProperty