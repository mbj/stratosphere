module Stratosphere.KafkaConnect.Connector.ScaleInPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScaleInPolicyProperty :: Prelude.Type
instance ToResourceProperties ScaleInPolicyProperty
instance JSON.ToJSON ScaleInPolicyProperty