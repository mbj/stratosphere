module Stratosphere.AppStream.Stack.StreamingExperienceSettingsProperty (
        StreamingExperienceSettingsProperty(..),
        mkStreamingExperienceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamingExperienceSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-streamingexperiencesettings.html>
    StreamingExperienceSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-streamingexperiencesettings.html#cfn-appstream-stack-streamingexperiencesettings-preferredprotocol>
                                         preferredProtocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamingExperienceSettingsProperty ::
  StreamingExperienceSettingsProperty
mkStreamingExperienceSettingsProperty
  = StreamingExperienceSettingsProperty
      {preferredProtocol = Prelude.Nothing}
instance ToResourceProperties StreamingExperienceSettingsProperty where
  toResourceProperties StreamingExperienceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.StreamingExperienceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PreferredProtocol" Prelude.<$> preferredProtocol])}
instance JSON.ToJSON StreamingExperienceSettingsProperty where
  toJSON StreamingExperienceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PreferredProtocol" Prelude.<$> preferredProtocol]))
instance Property "PreferredProtocol" StreamingExperienceSettingsProperty where
  type PropertyType "PreferredProtocol" StreamingExperienceSettingsProperty = Value Prelude.Text
  set newValue StreamingExperienceSettingsProperty {}
    = StreamingExperienceSettingsProperty
        {preferredProtocol = Prelude.pure newValue, ..}