module Stratosphere.FraudDetector.Detector.EventVariableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventVariableProperty :: Prelude.Type
instance ToResourceProperties EventVariableProperty
instance Prelude.Eq EventVariableProperty
instance Prelude.Show EventVariableProperty
instance JSON.ToJSON EventVariableProperty