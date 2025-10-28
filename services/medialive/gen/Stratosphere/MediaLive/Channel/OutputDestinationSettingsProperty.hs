module Stratosphere.MediaLive.Channel.OutputDestinationSettingsProperty (
        OutputDestinationSettingsProperty(..),
        mkOutputDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html>
    OutputDestinationSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-passwordparam>
                                       passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-streamname>
                                       streamName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-url>
                                       url :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-username>
                                       username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputDestinationSettingsProperty ::
  OutputDestinationSettingsProperty
mkOutputDestinationSettingsProperty
  = OutputDestinationSettingsProperty
      {haddock_workaround_ = (), passwordParam = Prelude.Nothing,
       streamName = Prelude.Nothing, url = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties OutputDestinationSettingsProperty where
  toResourceProperties OutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "StreamName" Prelude.<$> streamName,
                            (JSON..=) "Url" Prelude.<$> url,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON OutputDestinationSettingsProperty where
  toJSON OutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "StreamName" Prelude.<$> streamName,
               (JSON..=) "Url" Prelude.<$> url,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "PasswordParam" OutputDestinationSettingsProperty where
  type PropertyType "PasswordParam" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {passwordParam = Prelude.pure newValue, ..}
instance Property "StreamName" OutputDestinationSettingsProperty where
  type PropertyType "StreamName" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {streamName = Prelude.pure newValue, ..}
instance Property "Url" OutputDestinationSettingsProperty where
  type PropertyType "Url" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {url = Prelude.pure newValue, ..}
instance Property "Username" OutputDestinationSettingsProperty where
  type PropertyType "Username" OutputDestinationSettingsProperty = Value Prelude.Text
  set newValue OutputDestinationSettingsProperty {..}
    = OutputDestinationSettingsProperty
        {username = Prelude.pure newValue, ..}