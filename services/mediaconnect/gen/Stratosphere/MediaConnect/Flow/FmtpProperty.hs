module Stratosphere.MediaConnect.Flow.FmtpProperty (
        FmtpProperty(..), mkFmtpProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FmtpProperty
  = FmtpProperty {channelOrder :: (Prelude.Maybe (Value Prelude.Text)),
                  colorimetry :: (Prelude.Maybe (Value Prelude.Text)),
                  exactFramerate :: (Prelude.Maybe (Value Prelude.Text)),
                  par :: (Prelude.Maybe (Value Prelude.Text)),
                  range :: (Prelude.Maybe (Value Prelude.Text)),
                  scanMode :: (Prelude.Maybe (Value Prelude.Text)),
                  tcs :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFmtpProperty :: FmtpProperty
mkFmtpProperty
  = FmtpProperty
      {channelOrder = Prelude.Nothing, colorimetry = Prelude.Nothing,
       exactFramerate = Prelude.Nothing, par = Prelude.Nothing,
       range = Prelude.Nothing, scanMode = Prelude.Nothing,
       tcs = Prelude.Nothing}
instance ToResourceProperties FmtpProperty where
  toResourceProperties FmtpProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.Fmtp",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelOrder" Prelude.<$> channelOrder,
                            (JSON..=) "Colorimetry" Prelude.<$> colorimetry,
                            (JSON..=) "ExactFramerate" Prelude.<$> exactFramerate,
                            (JSON..=) "Par" Prelude.<$> par,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "ScanMode" Prelude.<$> scanMode,
                            (JSON..=) "Tcs" Prelude.<$> tcs])}
instance JSON.ToJSON FmtpProperty where
  toJSON FmtpProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelOrder" Prelude.<$> channelOrder,
               (JSON..=) "Colorimetry" Prelude.<$> colorimetry,
               (JSON..=) "ExactFramerate" Prelude.<$> exactFramerate,
               (JSON..=) "Par" Prelude.<$> par,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "ScanMode" Prelude.<$> scanMode,
               (JSON..=) "Tcs" Prelude.<$> tcs]))
instance Property "ChannelOrder" FmtpProperty where
  type PropertyType "ChannelOrder" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {channelOrder = Prelude.pure newValue, ..}
instance Property "Colorimetry" FmtpProperty where
  type PropertyType "Colorimetry" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {colorimetry = Prelude.pure newValue, ..}
instance Property "ExactFramerate" FmtpProperty where
  type PropertyType "ExactFramerate" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {exactFramerate = Prelude.pure newValue, ..}
instance Property "Par" FmtpProperty where
  type PropertyType "Par" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {par = Prelude.pure newValue, ..}
instance Property "Range" FmtpProperty where
  type PropertyType "Range" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {range = Prelude.pure newValue, ..}
instance Property "ScanMode" FmtpProperty where
  type PropertyType "ScanMode" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {scanMode = Prelude.pure newValue, ..}
instance Property "Tcs" FmtpProperty where
  type PropertyType "Tcs" FmtpProperty = Value Prelude.Text
  set newValue FmtpProperty {..}
    = FmtpProperty {tcs = Prelude.pure newValue, ..}