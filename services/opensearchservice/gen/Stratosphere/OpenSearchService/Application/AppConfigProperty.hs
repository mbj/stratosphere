module Stratosphere.OpenSearchService.Application.AppConfigProperty (
        AppConfigProperty(..), mkAppConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AppConfigProperty
  = AppConfigProperty {key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AppConfigProperty
mkAppConfigProperty key value
  = AppConfigProperty {key = key, value = value}
instance ToResourceProperties AppConfigProperty where
  toResourceProperties AppConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Application.AppConfig",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON AppConfigProperty where
  toJSON AppConfigProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" AppConfigProperty where
  type PropertyType "Key" AppConfigProperty = Value Prelude.Text
  set newValue AppConfigProperty {..}
    = AppConfigProperty {key = newValue, ..}
instance Property "Value" AppConfigProperty where
  type PropertyType "Value" AppConfigProperty = Value Prelude.Text
  set newValue AppConfigProperty {..}
    = AppConfigProperty {value = newValue, ..}