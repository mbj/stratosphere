module Stratosphere.MediaLive.Channel.AvailConfigurationProperty (
        module Exports, AvailConfigurationProperty(..),
        mkAvailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AvailSettingsProperty as Exports
import Stratosphere.ResourceProperties
data AvailConfigurationProperty
  = AvailConfigurationProperty {availSettings :: (Prelude.Maybe AvailSettingsProperty)}
mkAvailConfigurationProperty :: AvailConfigurationProperty
mkAvailConfigurationProperty
  = AvailConfigurationProperty {availSettings = Prelude.Nothing}
instance ToResourceProperties AvailConfigurationProperty where
  toResourceProperties AvailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AvailConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailSettings" Prelude.<$> availSettings])}
instance JSON.ToJSON AvailConfigurationProperty where
  toJSON AvailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailSettings" Prelude.<$> availSettings]))
instance Property "AvailSettings" AvailConfigurationProperty where
  type PropertyType "AvailSettings" AvailConfigurationProperty = AvailSettingsProperty
  set newValue AvailConfigurationProperty {}
    = AvailConfigurationProperty
        {availSettings = Prelude.pure newValue, ..}