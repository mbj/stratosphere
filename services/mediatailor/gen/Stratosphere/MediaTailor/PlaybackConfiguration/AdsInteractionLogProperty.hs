module Stratosphere.MediaTailor.PlaybackConfiguration.AdsInteractionLogProperty (
        AdsInteractionLogProperty(..), mkAdsInteractionLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdsInteractionLogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html>
    AdsInteractionLogProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html#cfn-mediatailor-playbackconfiguration-adsinteractionlog-excludeeventtypes>
                               excludeEventTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html#cfn-mediatailor-playbackconfiguration-adsinteractionlog-publishoptineventtypes>
                               publishOptInEventTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdsInteractionLogProperty :: AdsInteractionLogProperty
mkAdsInteractionLogProperty
  = AdsInteractionLogProperty
      {haddock_workaround_ = (), excludeEventTypes = Prelude.Nothing,
       publishOptInEventTypes = Prelude.Nothing}
instance ToResourceProperties AdsInteractionLogProperty where
  toResourceProperties AdsInteractionLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.AdsInteractionLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeEventTypes" Prelude.<$> excludeEventTypes,
                            (JSON..=) "PublishOptInEventTypes"
                              Prelude.<$> publishOptInEventTypes])}
instance JSON.ToJSON AdsInteractionLogProperty where
  toJSON AdsInteractionLogProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeEventTypes" Prelude.<$> excludeEventTypes,
               (JSON..=) "PublishOptInEventTypes"
                 Prelude.<$> publishOptInEventTypes]))
instance Property "ExcludeEventTypes" AdsInteractionLogProperty where
  type PropertyType "ExcludeEventTypes" AdsInteractionLogProperty = ValueList Prelude.Text
  set newValue AdsInteractionLogProperty {..}
    = AdsInteractionLogProperty
        {excludeEventTypes = Prelude.pure newValue, ..}
instance Property "PublishOptInEventTypes" AdsInteractionLogProperty where
  type PropertyType "PublishOptInEventTypes" AdsInteractionLogProperty = ValueList Prelude.Text
  set newValue AdsInteractionLogProperty {..}
    = AdsInteractionLogProperty
        {publishOptInEventTypes = Prelude.pure newValue, ..}