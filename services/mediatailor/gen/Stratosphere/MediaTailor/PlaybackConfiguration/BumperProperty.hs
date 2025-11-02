module Stratosphere.MediaTailor.PlaybackConfiguration.BumperProperty (
        BumperProperty(..), mkBumperProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BumperProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-bumper.html>
    BumperProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-bumper.html#cfn-mediatailor-playbackconfiguration-bumper-endurl>
                    endUrl :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-bumper.html#cfn-mediatailor-playbackconfiguration-bumper-starturl>
                    startUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBumperProperty :: BumperProperty
mkBumperProperty
  = BumperProperty
      {haddock_workaround_ = (), endUrl = Prelude.Nothing,
       startUrl = Prelude.Nothing}
instance ToResourceProperties BumperProperty where
  toResourceProperties BumperProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.Bumper",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndUrl" Prelude.<$> endUrl,
                            (JSON..=) "StartUrl" Prelude.<$> startUrl])}
instance JSON.ToJSON BumperProperty where
  toJSON BumperProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndUrl" Prelude.<$> endUrl,
               (JSON..=) "StartUrl" Prelude.<$> startUrl]))
instance Property "EndUrl" BumperProperty where
  type PropertyType "EndUrl" BumperProperty = Value Prelude.Text
  set newValue BumperProperty {..}
    = BumperProperty {endUrl = Prelude.pure newValue, ..}
instance Property "StartUrl" BumperProperty where
  type PropertyType "StartUrl" BumperProperty = Value Prelude.Text
  set newValue BumperProperty {..}
    = BumperProperty {startUrl = Prelude.pure newValue, ..}