module Stratosphere.MediaLive.Channel.NielsenCBETProperty (
        NielsenCBETProperty(..), mkNielsenCBETProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenCBETProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsencbet.html>
    NielsenCBETProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsencbet.html#cfn-medialive-channel-nielsencbet-cbetcheckdigitstring>
                         cbetCheckDigitString :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsencbet.html#cfn-medialive-channel-nielsencbet-cbetstepaside>
                         cbetStepaside :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsencbet.html#cfn-medialive-channel-nielsencbet-csid>
                         csid :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNielsenCBETProperty :: NielsenCBETProperty
mkNielsenCBETProperty
  = NielsenCBETProperty
      {cbetCheckDigitString = Prelude.Nothing,
       cbetStepaside = Prelude.Nothing, csid = Prelude.Nothing}
instance ToResourceProperties NielsenCBETProperty where
  toResourceProperties NielsenCBETProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenCBET",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CbetCheckDigitString" Prelude.<$> cbetCheckDigitString,
                            (JSON..=) "CbetStepaside" Prelude.<$> cbetStepaside,
                            (JSON..=) "Csid" Prelude.<$> csid])}
instance JSON.ToJSON NielsenCBETProperty where
  toJSON NielsenCBETProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CbetCheckDigitString" Prelude.<$> cbetCheckDigitString,
               (JSON..=) "CbetStepaside" Prelude.<$> cbetStepaside,
               (JSON..=) "Csid" Prelude.<$> csid]))
instance Property "CbetCheckDigitString" NielsenCBETProperty where
  type PropertyType "CbetCheckDigitString" NielsenCBETProperty = Value Prelude.Text
  set newValue NielsenCBETProperty {..}
    = NielsenCBETProperty
        {cbetCheckDigitString = Prelude.pure newValue, ..}
instance Property "CbetStepaside" NielsenCBETProperty where
  type PropertyType "CbetStepaside" NielsenCBETProperty = Value Prelude.Text
  set newValue NielsenCBETProperty {..}
    = NielsenCBETProperty {cbetStepaside = Prelude.pure newValue, ..}
instance Property "Csid" NielsenCBETProperty where
  type PropertyType "Csid" NielsenCBETProperty = Value Prelude.Text
  set newValue NielsenCBETProperty {..}
    = NielsenCBETProperty {csid = Prelude.pure newValue, ..}