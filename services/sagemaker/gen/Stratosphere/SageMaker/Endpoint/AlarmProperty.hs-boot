module Stratosphere.SageMaker.Endpoint.AlarmProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmProperty :: Prelude.Type
instance ToResourceProperties AlarmProperty
instance Prelude.Eq AlarmProperty
instance Prelude.Show AlarmProperty
instance JSON.ToJSON AlarmProperty