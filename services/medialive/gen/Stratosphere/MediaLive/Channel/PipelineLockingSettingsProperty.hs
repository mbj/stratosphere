module Stratosphere.MediaLive.Channel.PipelineLockingSettingsProperty (
        PipelineLockingSettingsProperty(..),
        mkPipelineLockingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PipelineLockingSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-pipelinelockingsettings.html>
    PipelineLockingSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineLockingSettingsProperty ::
  PipelineLockingSettingsProperty
mkPipelineLockingSettingsProperty
  = PipelineLockingSettingsProperty {}
instance ToResourceProperties PipelineLockingSettingsProperty where
  toResourceProperties PipelineLockingSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.PipelineLockingSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON PipelineLockingSettingsProperty where
  toJSON PipelineLockingSettingsProperty {} = JSON.object []