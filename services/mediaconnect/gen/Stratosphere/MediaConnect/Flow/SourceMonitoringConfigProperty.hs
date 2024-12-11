module Stratosphere.MediaConnect.Flow.SourceMonitoringConfigProperty (
        SourceMonitoringConfigProperty(..),
        mkSourceMonitoringConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceMonitoringConfigProperty
  = SourceMonitoringConfigProperty {thumbnailState :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceMonitoringConfigProperty ::
  Value Prelude.Text -> SourceMonitoringConfigProperty
mkSourceMonitoringConfigProperty thumbnailState
  = SourceMonitoringConfigProperty {thumbnailState = thumbnailState}
instance ToResourceProperties SourceMonitoringConfigProperty where
  toResourceProperties SourceMonitoringConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.SourceMonitoringConfig",
         supportsTags = Prelude.False,
         properties = ["ThumbnailState" JSON..= thumbnailState]}
instance JSON.ToJSON SourceMonitoringConfigProperty where
  toJSON SourceMonitoringConfigProperty {..}
    = JSON.object ["ThumbnailState" JSON..= thumbnailState]
instance Property "ThumbnailState" SourceMonitoringConfigProperty where
  type PropertyType "ThumbnailState" SourceMonitoringConfigProperty = Value Prelude.Text
  set newValue SourceMonitoringConfigProperty {}
    = SourceMonitoringConfigProperty {thumbnailState = newValue, ..}