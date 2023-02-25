module Stratosphere.ApiGateway.Deployment.MethodSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MethodSettingProperty :: Prelude.Type
instance ToResourceProperties MethodSettingProperty
instance JSON.ToJSON MethodSettingProperty