module Stratosphere.QBusiness.DataSource.VideoExtractionConfigurationProperty (
        VideoExtractionConfigurationProperty(..),
        mkVideoExtractionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoExtractionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-videoextractionconfiguration.html>
    VideoExtractionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-videoextractionconfiguration.html#cfn-qbusiness-datasource-videoextractionconfiguration-videoextractionstatus>
                                          videoExtractionStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoExtractionConfigurationProperty ::
  Value Prelude.Text -> VideoExtractionConfigurationProperty
mkVideoExtractionConfigurationProperty videoExtractionStatus
  = VideoExtractionConfigurationProperty
      {haddock_workaround_ = (),
       videoExtractionStatus = videoExtractionStatus}
instance ToResourceProperties VideoExtractionConfigurationProperty where
  toResourceProperties VideoExtractionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.VideoExtractionConfiguration",
         supportsTags = Prelude.False,
         properties = ["VideoExtractionStatus"
                         JSON..= videoExtractionStatus]}
instance JSON.ToJSON VideoExtractionConfigurationProperty where
  toJSON VideoExtractionConfigurationProperty {..}
    = JSON.object
        ["VideoExtractionStatus" JSON..= videoExtractionStatus]
instance Property "VideoExtractionStatus" VideoExtractionConfigurationProperty where
  type PropertyType "VideoExtractionStatus" VideoExtractionConfigurationProperty = Value Prelude.Text
  set newValue VideoExtractionConfigurationProperty {..}
    = VideoExtractionConfigurationProperty
        {videoExtractionStatus = newValue, ..}