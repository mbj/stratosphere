module Stratosphere.IoTAnalytics.Dataset.VariableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VariableProperty :: Prelude.Type
instance ToResourceProperties VariableProperty
instance Prelude.Eq VariableProperty
instance Prelude.Show VariableProperty
instance JSON.ToJSON VariableProperty