module Stratosphere.MediaLive.Channel.AncillarySourceSettingsProperty (
        AncillarySourceSettingsProperty(..),
        mkAncillarySourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AncillarySourceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ancillarysourcesettings.html>
    AncillarySourceSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ancillarysourcesettings.html#cfn-medialive-channel-ancillarysourcesettings-sourceancillarychannelnumber>
                                     sourceAncillaryChannelNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAncillarySourceSettingsProperty ::
  AncillarySourceSettingsProperty
mkAncillarySourceSettingsProperty
  = AncillarySourceSettingsProperty
      {haddock_workaround_ = (),
       sourceAncillaryChannelNumber = Prelude.Nothing}
instance ToResourceProperties AncillarySourceSettingsProperty where
  toResourceProperties AncillarySourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AncillarySourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceAncillaryChannelNumber"
                              Prelude.<$> sourceAncillaryChannelNumber])}
instance JSON.ToJSON AncillarySourceSettingsProperty where
  toJSON AncillarySourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceAncillaryChannelNumber"
                 Prelude.<$> sourceAncillaryChannelNumber]))
instance Property "SourceAncillaryChannelNumber" AncillarySourceSettingsProperty where
  type PropertyType "SourceAncillaryChannelNumber" AncillarySourceSettingsProperty = Value Prelude.Integer
  set newValue AncillarySourceSettingsProperty {..}
    = AncillarySourceSettingsProperty
        {sourceAncillaryChannelNumber = Prelude.pure newValue, ..}