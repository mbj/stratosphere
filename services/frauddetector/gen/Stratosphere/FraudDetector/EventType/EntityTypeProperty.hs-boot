module Stratosphere.FraudDetector.EventType.EntityTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EntityTypeProperty :: Prelude.Type
instance ToResourceProperties EntityTypeProperty
instance JSON.ToJSON EntityTypeProperty