module Stratosphere.KafkaConnect.Connector.ScaleOutPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScaleOutPolicyProperty :: Prelude.Type
instance ToResourceProperties ScaleOutPolicyProperty
instance JSON.ToJSON ScaleOutPolicyProperty