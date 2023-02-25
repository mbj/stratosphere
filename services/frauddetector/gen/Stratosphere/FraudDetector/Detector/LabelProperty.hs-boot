module Stratosphere.FraudDetector.Detector.LabelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LabelProperty :: Prelude.Type
instance ToResourceProperties LabelProperty
instance JSON.ToJSON LabelProperty