module Stratosphere.ApiGateway.Stage.AccessLogSettingProperty (
        AccessLogSettingProperty(..), mkAccessLogSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessLogSettingProperty
  = AccessLogSettingProperty {destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                              format :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessLogSettingProperty :: AccessLogSettingProperty
mkAccessLogSettingProperty
  = AccessLogSettingProperty
      {destinationArn = Prelude.Nothing, format = Prelude.Nothing}
instance ToResourceProperties AccessLogSettingProperty where
  toResourceProperties AccessLogSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Stage.AccessLogSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                            (JSON..=) "Format" Prelude.<$> format])}
instance JSON.ToJSON AccessLogSettingProperty where
  toJSON AccessLogSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
               (JSON..=) "Format" Prelude.<$> format]))
instance Property "DestinationArn" AccessLogSettingProperty where
  type PropertyType "DestinationArn" AccessLogSettingProperty = Value Prelude.Text
  set newValue AccessLogSettingProperty {..}
    = AccessLogSettingProperty
        {destinationArn = Prelude.pure newValue, ..}
instance Property "Format" AccessLogSettingProperty where
  type PropertyType "Format" AccessLogSettingProperty = Value Prelude.Text
  set newValue AccessLogSettingProperty {..}
    = AccessLogSettingProperty {format = Prelude.pure newValue, ..}