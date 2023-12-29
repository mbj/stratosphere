module Stratosphere.MediaLive.Channel.OutputGroupProperty (
        module Exports, OutputGroupProperty(..), mkOutputGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputGroupSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputGroupProperty
  = OutputGroupProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                         outputGroupSettings :: (Prelude.Maybe OutputGroupSettingsProperty),
                         outputs :: (Prelude.Maybe [OutputProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputGroupProperty :: OutputGroupProperty
mkOutputGroupProperty
  = OutputGroupProperty
      {name = Prelude.Nothing, outputGroupSettings = Prelude.Nothing,
       outputs = Prelude.Nothing}
instance ToResourceProperties OutputGroupProperty where
  toResourceProperties OutputGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OutputGroupSettings" Prelude.<$> outputGroupSettings,
                            (JSON..=) "Outputs" Prelude.<$> outputs])}
instance JSON.ToJSON OutputGroupProperty where
  toJSON OutputGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OutputGroupSettings" Prelude.<$> outputGroupSettings,
               (JSON..=) "Outputs" Prelude.<$> outputs]))
instance Property "Name" OutputGroupProperty where
  type PropertyType "Name" OutputGroupProperty = Value Prelude.Text
  set newValue OutputGroupProperty {..}
    = OutputGroupProperty {name = Prelude.pure newValue, ..}
instance Property "OutputGroupSettings" OutputGroupProperty where
  type PropertyType "OutputGroupSettings" OutputGroupProperty = OutputGroupSettingsProperty
  set newValue OutputGroupProperty {..}
    = OutputGroupProperty
        {outputGroupSettings = Prelude.pure newValue, ..}
instance Property "Outputs" OutputGroupProperty where
  type PropertyType "Outputs" OutputGroupProperty = [OutputProperty]
  set newValue OutputGroupProperty {..}
    = OutputGroupProperty {outputs = Prelude.pure newValue, ..}