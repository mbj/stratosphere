module Stratosphere.FraudDetector.Detector.ModelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelProperty :: Prelude.Type
instance ToResourceProperties ModelProperty
instance JSON.ToJSON ModelProperty