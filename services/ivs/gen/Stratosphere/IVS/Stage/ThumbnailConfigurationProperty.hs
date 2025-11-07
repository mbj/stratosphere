module Stratosphere.IVS.Stage.ThumbnailConfigurationProperty (
        module Exports, ThumbnailConfigurationProperty(..),
        mkThumbnailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.Stage.ParticipantThumbnailConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ThumbnailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-thumbnailconfiguration.html>
    ThumbnailConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-thumbnailconfiguration.html#cfn-ivs-stage-thumbnailconfiguration-participantthumbnailconfiguration>
                                    participantThumbnailConfiguration :: (Prelude.Maybe ParticipantThumbnailConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThumbnailConfigurationProperty :: ThumbnailConfigurationProperty
mkThumbnailConfigurationProperty
  = ThumbnailConfigurationProperty
      {haddock_workaround_ = (),
       participantThumbnailConfiguration = Prelude.Nothing}
instance ToResourceProperties ThumbnailConfigurationProperty where
  toResourceProperties ThumbnailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage.ThumbnailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParticipantThumbnailConfiguration"
                              Prelude.<$> participantThumbnailConfiguration])}
instance JSON.ToJSON ThumbnailConfigurationProperty where
  toJSON ThumbnailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParticipantThumbnailConfiguration"
                 Prelude.<$> participantThumbnailConfiguration]))
instance Property "ParticipantThumbnailConfiguration" ThumbnailConfigurationProperty where
  type PropertyType "ParticipantThumbnailConfiguration" ThumbnailConfigurationProperty = ParticipantThumbnailConfigurationProperty
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {participantThumbnailConfiguration = Prelude.pure newValue, ..}