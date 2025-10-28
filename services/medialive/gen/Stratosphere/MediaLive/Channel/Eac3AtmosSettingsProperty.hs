module Stratosphere.MediaLive.Channel.Eac3AtmosSettingsProperty (
        Eac3AtmosSettingsProperty(..), mkEac3AtmosSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Eac3AtmosSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html>
    Eac3AtmosSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-bitrate>
                               bitrate :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-codingmode>
                               codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-dialnorm>
                               dialnorm :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-drcline>
                               drcLine :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-drcrf>
                               drcRf :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-heighttrim>
                               heightTrim :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-eac3atmossettings.html#cfn-medialive-channel-eac3atmossettings-surroundtrim>
                               surroundTrim :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEac3AtmosSettingsProperty :: Eac3AtmosSettingsProperty
mkEac3AtmosSettingsProperty
  = Eac3AtmosSettingsProperty
      {haddock_workaround_ = (), bitrate = Prelude.Nothing,
       codingMode = Prelude.Nothing, dialnorm = Prelude.Nothing,
       drcLine = Prelude.Nothing, drcRf = Prelude.Nothing,
       heightTrim = Prelude.Nothing, surroundTrim = Prelude.Nothing}
instance ToResourceProperties Eac3AtmosSettingsProperty where
  toResourceProperties Eac3AtmosSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Eac3AtmosSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
                            (JSON..=) "DrcLine" Prelude.<$> drcLine,
                            (JSON..=) "DrcRf" Prelude.<$> drcRf,
                            (JSON..=) "HeightTrim" Prelude.<$> heightTrim,
                            (JSON..=) "SurroundTrim" Prelude.<$> surroundTrim])}
instance JSON.ToJSON Eac3AtmosSettingsProperty where
  toJSON Eac3AtmosSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
               (JSON..=) "DrcLine" Prelude.<$> drcLine,
               (JSON..=) "DrcRf" Prelude.<$> drcRf,
               (JSON..=) "HeightTrim" Prelude.<$> heightTrim,
               (JSON..=) "SurroundTrim" Prelude.<$> surroundTrim]))
instance Property "Bitrate" Eac3AtmosSettingsProperty where
  type PropertyType "Bitrate" Eac3AtmosSettingsProperty = Value Prelude.Double
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "CodingMode" Eac3AtmosSettingsProperty where
  type PropertyType "CodingMode" Eac3AtmosSettingsProperty = Value Prelude.Text
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty
        {codingMode = Prelude.pure newValue, ..}
instance Property "Dialnorm" Eac3AtmosSettingsProperty where
  type PropertyType "Dialnorm" Eac3AtmosSettingsProperty = Value Prelude.Integer
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty {dialnorm = Prelude.pure newValue, ..}
instance Property "DrcLine" Eac3AtmosSettingsProperty where
  type PropertyType "DrcLine" Eac3AtmosSettingsProperty = Value Prelude.Text
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty {drcLine = Prelude.pure newValue, ..}
instance Property "DrcRf" Eac3AtmosSettingsProperty where
  type PropertyType "DrcRf" Eac3AtmosSettingsProperty = Value Prelude.Text
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty {drcRf = Prelude.pure newValue, ..}
instance Property "HeightTrim" Eac3AtmosSettingsProperty where
  type PropertyType "HeightTrim" Eac3AtmosSettingsProperty = Value Prelude.Double
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty
        {heightTrim = Prelude.pure newValue, ..}
instance Property "SurroundTrim" Eac3AtmosSettingsProperty where
  type PropertyType "SurroundTrim" Eac3AtmosSettingsProperty = Value Prelude.Double
  set newValue Eac3AtmosSettingsProperty {..}
    = Eac3AtmosSettingsProperty
        {surroundTrim = Prelude.pure newValue, ..}