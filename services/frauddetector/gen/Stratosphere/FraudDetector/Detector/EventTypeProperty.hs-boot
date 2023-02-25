module Stratosphere.FraudDetector.Detector.EventTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventTypeProperty :: Prelude.Type
instance ToResourceProperties EventTypeProperty
instance JSON.ToJSON EventTypeProperty