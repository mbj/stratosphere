module Stratosphere.ApiGateway.Stage.AccessLogSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessLogSettingProperty :: Prelude.Type
instance ToResourceProperties AccessLogSettingProperty
instance JSON.ToJSON AccessLogSettingProperty