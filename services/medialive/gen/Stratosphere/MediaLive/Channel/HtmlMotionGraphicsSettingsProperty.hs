module Stratosphere.MediaLive.Channel.HtmlMotionGraphicsSettingsProperty (
        HtmlMotionGraphicsSettingsProperty(..),
        mkHtmlMotionGraphicsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HtmlMotionGraphicsSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-htmlmotiongraphicssettings.html>
    HtmlMotionGraphicsSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHtmlMotionGraphicsSettingsProperty ::
  HtmlMotionGraphicsSettingsProperty
mkHtmlMotionGraphicsSettingsProperty
  = HtmlMotionGraphicsSettingsProperty {}
instance ToResourceProperties HtmlMotionGraphicsSettingsProperty where
  toResourceProperties HtmlMotionGraphicsSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HtmlMotionGraphicsSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON HtmlMotionGraphicsSettingsProperty where
  toJSON HtmlMotionGraphicsSettingsProperty {} = JSON.object []