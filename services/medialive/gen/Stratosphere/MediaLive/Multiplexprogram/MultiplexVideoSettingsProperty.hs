module Stratosphere.MediaLive.Multiplexprogram.MultiplexVideoSettingsProperty (
        module Exports, MultiplexVideoSettingsProperty(..),
        mkMultiplexVideoSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Multiplexprogram.MultiplexStatmuxVideoSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexVideoSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html>
    MultiplexVideoSettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html#cfn-medialive-multiplexprogram-multiplexvideosettings-constantbitrate>
                                    constantBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html#cfn-medialive-multiplexprogram-multiplexvideosettings-statmuxsettings>
                                    statmuxSettings :: (Prelude.Maybe MultiplexStatmuxVideoSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexVideoSettingsProperty :: MultiplexVideoSettingsProperty
mkMultiplexVideoSettingsProperty
  = MultiplexVideoSettingsProperty
      {haddock_workaround_ = (), constantBitrate = Prelude.Nothing,
       statmuxSettings = Prelude.Nothing}
instance ToResourceProperties MultiplexVideoSettingsProperty where
  toResourceProperties MultiplexVideoSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexVideoSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConstantBitrate" Prelude.<$> constantBitrate,
                            (JSON..=) "StatmuxSettings" Prelude.<$> statmuxSettings])}
instance JSON.ToJSON MultiplexVideoSettingsProperty where
  toJSON MultiplexVideoSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConstantBitrate" Prelude.<$> constantBitrate,
               (JSON..=) "StatmuxSettings" Prelude.<$> statmuxSettings]))
instance Property "ConstantBitrate" MultiplexVideoSettingsProperty where
  type PropertyType "ConstantBitrate" MultiplexVideoSettingsProperty = Value Prelude.Integer
  set newValue MultiplexVideoSettingsProperty {..}
    = MultiplexVideoSettingsProperty
        {constantBitrate = Prelude.pure newValue, ..}
instance Property "StatmuxSettings" MultiplexVideoSettingsProperty where
  type PropertyType "StatmuxSettings" MultiplexVideoSettingsProperty = MultiplexStatmuxVideoSettingsProperty
  set newValue MultiplexVideoSettingsProperty {..}
    = MultiplexVideoSettingsProperty
        {statmuxSettings = Prelude.pure newValue, ..}