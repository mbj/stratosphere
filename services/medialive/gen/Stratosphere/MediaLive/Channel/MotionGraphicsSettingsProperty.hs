module Stratosphere.MediaLive.Channel.MotionGraphicsSettingsProperty (
        module Exports, MotionGraphicsSettingsProperty(..),
        mkMotionGraphicsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HtmlMotionGraphicsSettingsProperty as Exports
import Stratosphere.ResourceProperties
data MotionGraphicsSettingsProperty
  = MotionGraphicsSettingsProperty {htmlMotionGraphicsSettings :: (Prelude.Maybe HtmlMotionGraphicsSettingsProperty)}
mkMotionGraphicsSettingsProperty :: MotionGraphicsSettingsProperty
mkMotionGraphicsSettingsProperty
  = MotionGraphicsSettingsProperty
      {htmlMotionGraphicsSettings = Prelude.Nothing}
instance ToResourceProperties MotionGraphicsSettingsProperty where
  toResourceProperties MotionGraphicsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MotionGraphicsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HtmlMotionGraphicsSettings"
                              Prelude.<$> htmlMotionGraphicsSettings])}
instance JSON.ToJSON MotionGraphicsSettingsProperty where
  toJSON MotionGraphicsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HtmlMotionGraphicsSettings"
                 Prelude.<$> htmlMotionGraphicsSettings]))
instance Property "HtmlMotionGraphicsSettings" MotionGraphicsSettingsProperty where
  type PropertyType "HtmlMotionGraphicsSettings" MotionGraphicsSettingsProperty = HtmlMotionGraphicsSettingsProperty
  set newValue MotionGraphicsSettingsProperty {}
    = MotionGraphicsSettingsProperty
        {htmlMotionGraphicsSettings = Prelude.pure newValue, ..}