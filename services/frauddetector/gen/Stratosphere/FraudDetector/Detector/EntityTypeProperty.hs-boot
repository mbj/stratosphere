module Stratosphere.FraudDetector.Detector.EntityTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntityTypeProperty :: Prelude.Type
instance ToResourceProperties EntityTypeProperty
instance Prelude.Eq EntityTypeProperty
instance Prelude.Show EntityTypeProperty
instance JSON.ToJSON EntityTypeProperty