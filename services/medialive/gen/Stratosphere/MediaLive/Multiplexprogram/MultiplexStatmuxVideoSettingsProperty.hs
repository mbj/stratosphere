module Stratosphere.MediaLive.Multiplexprogram.MultiplexStatmuxVideoSettingsProperty (
        MultiplexStatmuxVideoSettingsProperty(..),
        mkMultiplexStatmuxVideoSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexStatmuxVideoSettingsProperty
  = MultiplexStatmuxVideoSettingsProperty {maximumBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                                           minimumBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                                           priority :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexStatmuxVideoSettingsProperty ::
  MultiplexStatmuxVideoSettingsProperty
mkMultiplexStatmuxVideoSettingsProperty
  = MultiplexStatmuxVideoSettingsProperty
      {maximumBitrate = Prelude.Nothing,
       minimumBitrate = Prelude.Nothing, priority = Prelude.Nothing}
instance ToResourceProperties MultiplexStatmuxVideoSettingsProperty where
  toResourceProperties MultiplexStatmuxVideoSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexStatmuxVideoSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
                            (JSON..=) "MinimumBitrate" Prelude.<$> minimumBitrate,
                            (JSON..=) "Priority" Prelude.<$> priority])}
instance JSON.ToJSON MultiplexStatmuxVideoSettingsProperty where
  toJSON MultiplexStatmuxVideoSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
               (JSON..=) "MinimumBitrate" Prelude.<$> minimumBitrate,
               (JSON..=) "Priority" Prelude.<$> priority]))
instance Property "MaximumBitrate" MultiplexStatmuxVideoSettingsProperty where
  type PropertyType "MaximumBitrate" MultiplexStatmuxVideoSettingsProperty = Value Prelude.Integer
  set newValue MultiplexStatmuxVideoSettingsProperty {..}
    = MultiplexStatmuxVideoSettingsProperty
        {maximumBitrate = Prelude.pure newValue, ..}
instance Property "MinimumBitrate" MultiplexStatmuxVideoSettingsProperty where
  type PropertyType "MinimumBitrate" MultiplexStatmuxVideoSettingsProperty = Value Prelude.Integer
  set newValue MultiplexStatmuxVideoSettingsProperty {..}
    = MultiplexStatmuxVideoSettingsProperty
        {minimumBitrate = Prelude.pure newValue, ..}
instance Property "Priority" MultiplexStatmuxVideoSettingsProperty where
  type PropertyType "Priority" MultiplexStatmuxVideoSettingsProperty = Value Prelude.Integer
  set newValue MultiplexStatmuxVideoSettingsProperty {..}
    = MultiplexStatmuxVideoSettingsProperty
        {priority = Prelude.pure newValue, ..}