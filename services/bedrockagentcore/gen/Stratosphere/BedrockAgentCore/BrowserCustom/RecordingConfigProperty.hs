module Stratosphere.BedrockAgentCore.BrowserCustom.RecordingConfigProperty (
        module Exports, RecordingConfigProperty(..),
        mkRecordingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.BrowserCustom.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-recordingconfig.html>
    RecordingConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-recordingconfig.html#cfn-bedrockagentcore-browsercustom-recordingconfig-enabled>
                             enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-recordingconfig.html#cfn-bedrockagentcore-browsercustom-recordingconfig-s3location>
                             s3Location :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingConfigProperty :: RecordingConfigProperty
mkRecordingConfigProperty
  = RecordingConfigProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       s3Location = Prelude.Nothing}
instance ToResourceProperties RecordingConfigProperty where
  toResourceProperties RecordingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::BrowserCustom.RecordingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "S3Location" Prelude.<$> s3Location])}
instance JSON.ToJSON RecordingConfigProperty where
  toJSON RecordingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "S3Location" Prelude.<$> s3Location]))
instance Property "Enabled" RecordingConfigProperty where
  type PropertyType "Enabled" RecordingConfigProperty = Value Prelude.Bool
  set newValue RecordingConfigProperty {..}
    = RecordingConfigProperty {enabled = Prelude.pure newValue, ..}
instance Property "S3Location" RecordingConfigProperty where
  type PropertyType "S3Location" RecordingConfigProperty = S3LocationProperty
  set newValue RecordingConfigProperty {..}
    = RecordingConfigProperty {s3Location = Prelude.pure newValue, ..}