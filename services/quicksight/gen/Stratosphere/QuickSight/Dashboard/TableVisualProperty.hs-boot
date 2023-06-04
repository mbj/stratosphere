module Stratosphere.QuickSight.Dashboard.TableVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableVisualProperty :: Prelude.Type
instance ToResourceProperties TableVisualProperty
instance JSON.ToJSON TableVisualProperty