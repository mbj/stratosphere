module Stratosphere.MediaLive.Channel.InputLossBehaviorProperty (
        module Exports, InputLossBehaviorProperty(..),
        mkInputLossBehaviorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLossBehaviorProperty
  = InputLossBehaviorProperty {blackFrameMsec :: (Prelude.Maybe (Value Prelude.Integer)),
                               inputLossImageColor :: (Prelude.Maybe (Value Prelude.Text)),
                               inputLossImageSlate :: (Prelude.Maybe InputLocationProperty),
                               inputLossImageType :: (Prelude.Maybe (Value Prelude.Text)),
                               repeatFrameMsec :: (Prelude.Maybe (Value Prelude.Integer))}
mkInputLossBehaviorProperty :: InputLossBehaviorProperty
mkInputLossBehaviorProperty
  = InputLossBehaviorProperty
      {blackFrameMsec = Prelude.Nothing,
       inputLossImageColor = Prelude.Nothing,
       inputLossImageSlate = Prelude.Nothing,
       inputLossImageType = Prelude.Nothing,
       repeatFrameMsec = Prelude.Nothing}
instance ToResourceProperties InputLossBehaviorProperty where
  toResourceProperties InputLossBehaviorProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputLossBehavior",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlackFrameMsec" Prelude.<$> blackFrameMsec,
                            (JSON..=) "InputLossImageColor" Prelude.<$> inputLossImageColor,
                            (JSON..=) "InputLossImageSlate" Prelude.<$> inputLossImageSlate,
                            (JSON..=) "InputLossImageType" Prelude.<$> inputLossImageType,
                            (JSON..=) "RepeatFrameMsec" Prelude.<$> repeatFrameMsec])}
instance JSON.ToJSON InputLossBehaviorProperty where
  toJSON InputLossBehaviorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlackFrameMsec" Prelude.<$> blackFrameMsec,
               (JSON..=) "InputLossImageColor" Prelude.<$> inputLossImageColor,
               (JSON..=) "InputLossImageSlate" Prelude.<$> inputLossImageSlate,
               (JSON..=) "InputLossImageType" Prelude.<$> inputLossImageType,
               (JSON..=) "RepeatFrameMsec" Prelude.<$> repeatFrameMsec]))
instance Property "BlackFrameMsec" InputLossBehaviorProperty where
  type PropertyType "BlackFrameMsec" InputLossBehaviorProperty = Value Prelude.Integer
  set newValue InputLossBehaviorProperty {..}
    = InputLossBehaviorProperty
        {blackFrameMsec = Prelude.pure newValue, ..}
instance Property "InputLossImageColor" InputLossBehaviorProperty where
  type PropertyType "InputLossImageColor" InputLossBehaviorProperty = Value Prelude.Text
  set newValue InputLossBehaviorProperty {..}
    = InputLossBehaviorProperty
        {inputLossImageColor = Prelude.pure newValue, ..}
instance Property "InputLossImageSlate" InputLossBehaviorProperty where
  type PropertyType "InputLossImageSlate" InputLossBehaviorProperty = InputLocationProperty
  set newValue InputLossBehaviorProperty {..}
    = InputLossBehaviorProperty
        {inputLossImageSlate = Prelude.pure newValue, ..}
instance Property "InputLossImageType" InputLossBehaviorProperty where
  type PropertyType "InputLossImageType" InputLossBehaviorProperty = Value Prelude.Text
  set newValue InputLossBehaviorProperty {..}
    = InputLossBehaviorProperty
        {inputLossImageType = Prelude.pure newValue, ..}
instance Property "RepeatFrameMsec" InputLossBehaviorProperty where
  type PropertyType "RepeatFrameMsec" InputLossBehaviorProperty = Value Prelude.Integer
  set newValue InputLossBehaviorProperty {..}
    = InputLossBehaviorProperty
        {repeatFrameMsec = Prelude.pure newValue, ..}