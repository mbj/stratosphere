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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicsconfiguration.html>
    MotionGraphicsConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicsconfiguration.html#cfn-medialive-channel-motiongraphicsconfiguration-motiongraphicsinsertion>
                                         motionGraphicsInsertion :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-motiongraphicsconfiguration.html#cfn-medialive-channel-motiongraphicsconfiguration-motiongraphicssettings>
                                         motionGraphicsSettings :: (Prelude.Maybe MotionGraphicsSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMotionGraphicsConfigurationProperty ::
  MotionGraphicsConfigurationProperty
mkMotionGraphicsConfigurationProperty
  = MotionGraphicsConfigurationProperty
      {haddock_workaround_ = (),
       motionGraphicsInsertion = Prelude.Nothing,
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