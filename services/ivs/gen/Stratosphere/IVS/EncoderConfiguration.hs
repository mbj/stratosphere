module Stratosphere.IVS.EncoderConfiguration (
        module Exports, EncoderConfiguration(..), mkEncoderConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.EncoderConfiguration.VideoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EncoderConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-encoderconfiguration.html>
    EncoderConfiguration {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-encoderconfiguration.html#cfn-ivs-encoderconfiguration-name>
                          name :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-encoderconfiguration.html#cfn-ivs-encoderconfiguration-tags>
                          tags :: (Prelude.Maybe [Tag]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-encoderconfiguration.html#cfn-ivs-encoderconfiguration-video>
                          video :: (Prelude.Maybe VideoProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncoderConfiguration :: EncoderConfiguration
mkEncoderConfiguration
  = EncoderConfiguration
      {haddock_workaround_ = (), name = Prelude.Nothing,
       tags = Prelude.Nothing, video = Prelude.Nothing}
instance ToResourceProperties EncoderConfiguration where
  toResourceProperties EncoderConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IVS::EncoderConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Video" Prelude.<$> video])}
instance JSON.ToJSON EncoderConfiguration where
  toJSON EncoderConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Video" Prelude.<$> video]))
instance Property "Name" EncoderConfiguration where
  type PropertyType "Name" EncoderConfiguration = Value Prelude.Text
  set newValue EncoderConfiguration {..}
    = EncoderConfiguration {name = Prelude.pure newValue, ..}
instance Property "Tags" EncoderConfiguration where
  type PropertyType "Tags" EncoderConfiguration = [Tag]
  set newValue EncoderConfiguration {..}
    = EncoderConfiguration {tags = Prelude.pure newValue, ..}
instance Property "Video" EncoderConfiguration where
  type PropertyType "Video" EncoderConfiguration = VideoProperty
  set newValue EncoderConfiguration {..}
    = EncoderConfiguration {video = Prelude.pure newValue, ..}