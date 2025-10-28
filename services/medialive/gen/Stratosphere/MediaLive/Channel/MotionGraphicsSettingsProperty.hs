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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicssettings.html>
    MotionGraphicsSettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicssettings.html#cfn-medialive-channel-motiongraphicssettings-htmlmotiongraphicssettings>
                                    htmlMotionGraphicsSettings :: (Prelude.Maybe HtmlMotionGraphicsSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMotionGraphicsSettingsProperty :: MotionGraphicsSettingsProperty
mkMotionGraphicsSettingsProperty
  = MotionGraphicsSettingsProperty
      {haddock_workaround_ = (),
       htmlMotionGraphicsSettings = Prelude.Nothing}
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
  set newValue MotionGraphicsSettingsProperty {..}
    = MotionGraphicsSettingsProperty
        {htmlMotionGraphicsSettings = Prelude.pure newValue, ..}