module Stratosphere.MediaLive.Channel.Scte20SourceSettingsProperty (
        Scte20SourceSettingsProperty(..), mkScte20SourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scte20SourceSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html>
    Scte20SourceSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-convert608to708>
                                  convert608To708 :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-source608channelnumber>
                                  source608ChannelNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScte20SourceSettingsProperty :: Scte20SourceSettingsProperty
mkScte20SourceSettingsProperty
  = Scte20SourceSettingsProperty
      {convert608To708 = Prelude.Nothing,
       source608ChannelNumber = Prelude.Nothing}
instance ToResourceProperties Scte20SourceSettingsProperty where
  toResourceProperties Scte20SourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte20SourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Convert608To708" Prelude.<$> convert608To708,
                            (JSON..=) "Source608ChannelNumber"
                              Prelude.<$> source608ChannelNumber])}
instance JSON.ToJSON Scte20SourceSettingsProperty where
  toJSON Scte20SourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Convert608To708" Prelude.<$> convert608To708,
               (JSON..=) "Source608ChannelNumber"
                 Prelude.<$> source608ChannelNumber]))
instance Property "Convert608To708" Scte20SourceSettingsProperty where
  type PropertyType "Convert608To708" Scte20SourceSettingsProperty = Value Prelude.Text
  set newValue Scte20SourceSettingsProperty {..}
    = Scte20SourceSettingsProperty
        {convert608To708 = Prelude.pure newValue, ..}
instance Property "Source608ChannelNumber" Scte20SourceSettingsProperty where
  type PropertyType "Source608ChannelNumber" Scte20SourceSettingsProperty = Value Prelude.Integer
  set newValue Scte20SourceSettingsProperty {..}
    = Scte20SourceSettingsProperty
        {source608ChannelNumber = Prelude.pure newValue, ..}