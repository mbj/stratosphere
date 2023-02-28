module Stratosphere.MediaLive.Channel.MotionGraphicsConfigurationProperty (
        module Exports, MotionGraphicsConfigurationProperty(..),
        mkMotionGraphicsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MotionGraphicsSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MotionGraphicsConfigurationProperty
  = MotionGraphicsConfigurationProperty {motionGraphicsInsertion :: (Prelude.Maybe (Value Prelude.Text)),
                                         motionGraphicsSettings :: (Prelude.Maybe MotionGraphicsSettingsProperty)}
mkMotionGraphicsConfigurationProperty ::
  MotionGraphicsConfigurationProperty
mkMotionGraphicsConfigurationProperty
  = MotionGraphicsConfigurationProperty
      {motionGraphicsInsertion = Prelude.Nothing,
       motionGraphicsSettings = Prelude.Nothing}
instance ToResourceProperties MotionGraphicsConfigurationProperty where
  toResourceProperties MotionGraphicsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MotionGraphicsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MotionGraphicsInsertion"
                              Prelude.<$> motionGraphicsInsertion,
                            (JSON..=) "MotionGraphicsSettings"
                              Prelude.<$> motionGraphicsSettings])}
instance JSON.ToJSON MotionGraphicsConfigurationProperty where
  toJSON MotionGraphicsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MotionGraphicsInsertion"
                 Prelude.<$> motionGraphicsInsertion,
               (JSON..=) "MotionGraphicsSettings"
                 Prelude.<$> motionGraphicsSettings]))
instance Property "MotionGraphicsInsertion" MotionGraphicsConfigurationProperty where
  type PropertyType "MotionGraphicsInsertion" MotionGraphicsConfigurationProperty = Value Prelude.Text
  set newValue MotionGraphicsConfigurationProperty {..}
    = MotionGraphicsConfigurationProperty
        {motionGraphicsInsertion = Prelude.pure newValue, ..}
instance Property "MotionGraphicsSettings" MotionGraphicsConfigurationProperty where
  type PropertyType "MotionGraphicsSettings" MotionGraphicsConfigurationProperty = MotionGraphicsSettingsProperty
  set newValue MotionGraphicsConfigurationProperty {..}
    = MotionGraphicsConfigurationProperty
        {motionGraphicsSettings = Prelude.pure newValue, ..}