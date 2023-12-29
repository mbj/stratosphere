module Stratosphere.FraudDetector.Detector.OutcomeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutcomeProperty :: Prelude.Type
instance ToResourceProperties OutcomeProperty
instance Prelude.Eq OutcomeProperty
instance Prelude.Show OutcomeProperty
instance JSON.ToJSON OutcomeProperty