module Stratosphere.MediaLive.Channel.Scte27SourceSettingsProperty (
        Scte27SourceSettingsProperty(..), mkScte27SourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scte27SourceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html>
    Scte27SourceSettingsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-ocrlanguage>
                                  ocrLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-pid>
                                  pid :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScte27SourceSettingsProperty :: Scte27SourceSettingsProperty
mkScte27SourceSettingsProperty
  = Scte27SourceSettingsProperty
      {haddock_workaround_ = (), ocrLanguage = Prelude.Nothing,
       pid = Prelude.Nothing}
instance ToResourceProperties Scte27SourceSettingsProperty where
  toResourceProperties Scte27SourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte27SourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OcrLanguage" Prelude.<$> ocrLanguage,
                            (JSON..=) "Pid" Prelude.<$> pid])}
instance JSON.ToJSON Scte27SourceSettingsProperty where
  toJSON Scte27SourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OcrLanguage" Prelude.<$> ocrLanguage,
               (JSON..=) "Pid" Prelude.<$> pid]))
instance Property "OcrLanguage" Scte27SourceSettingsProperty where
  type PropertyType "OcrLanguage" Scte27SourceSettingsProperty = Value Prelude.Text
  set newValue Scte27SourceSettingsProperty {..}
    = Scte27SourceSettingsProperty
        {ocrLanguage = Prelude.pure newValue, ..}
instance Property "Pid" Scte27SourceSettingsProperty where
  type PropertyType "Pid" Scte27SourceSettingsProperty = Value Prelude.Integer
  set newValue Scte27SourceSettingsProperty {..}
    = Scte27SourceSettingsProperty {pid = Prelude.pure newValue, ..}