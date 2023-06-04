module Stratosphere.QuickSight.Template.DataPathValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataPathValueProperty :: Prelude.Type
instance ToResourceProperties DataPathValueProperty
instance JSON.ToJSON DataPathValueProperty