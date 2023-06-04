module Stratosphere.QuickSight.Template.FontWeightProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FontWeightProperty :: Prelude.Type
instance ToResourceProperties FontWeightProperty
instance JSON.ToJSON FontWeightProperty