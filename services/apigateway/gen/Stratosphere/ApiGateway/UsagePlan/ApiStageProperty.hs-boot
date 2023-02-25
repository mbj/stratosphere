module Stratosphere.ApiGateway.UsagePlan.ApiStageProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ApiStageProperty :: Prelude.Type
instance ToResourceProperties ApiStageProperty
instance JSON.ToJSON ApiStageProperty