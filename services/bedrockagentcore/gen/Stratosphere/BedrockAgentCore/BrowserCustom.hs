module Stratosphere.BedrockAgentCore.BrowserCustom (
        module Exports, BrowserCustom(..), mkBrowserCustom
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.BrowserCustom.BrowserNetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.BrowserCustom.RecordingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BrowserCustom
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html>
    BrowserCustom {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-executionrolearn>
                   executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-networkconfiguration>
                   networkConfiguration :: BrowserNetworkConfigurationProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-recordingconfig>
                   recordingConfig :: (Prelude.Maybe RecordingConfigProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-browsercustom.html#cfn-bedrockagentcore-browsercustom-tags>
                   tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBrowserCustom ::
  Value Prelude.Text
  -> BrowserNetworkConfigurationProperty -> BrowserCustom
mkBrowserCustom name networkConfiguration
  = BrowserCustom
      {haddock_workaround_ = (), name = name,
       networkConfiguration = networkConfiguration,
       description = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       recordingConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties BrowserCustom where
  toResourceProperties BrowserCustom {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::BrowserCustom",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "NetworkConfiguration" JSON..= networkConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "RecordingConfig" Prelude.<$> recordingConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON BrowserCustom where
  toJSON BrowserCustom {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "NetworkConfiguration" JSON..= networkConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "RecordingConfig" Prelude.<$> recordingConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" BrowserCustom where
  type PropertyType "Description" BrowserCustom = Value Prelude.Text
  set newValue BrowserCustom {..}
    = BrowserCustom {description = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" BrowserCustom where
  type PropertyType "ExecutionRoleArn" BrowserCustom = Value Prelude.Text
  set newValue BrowserCustom {..}
    = BrowserCustom {executionRoleArn = Prelude.pure newValue, ..}
instance Property "Name" BrowserCustom where
  type PropertyType "Name" BrowserCustom = Value Prelude.Text
  set newValue BrowserCustom {..}
    = BrowserCustom {name = newValue, ..}
instance Property "NetworkConfiguration" BrowserCustom where
  type PropertyType "NetworkConfiguration" BrowserCustom = BrowserNetworkConfigurationProperty
  set newValue BrowserCustom {..}
    = BrowserCustom {networkConfiguration = newValue, ..}
instance Property "RecordingConfig" BrowserCustom where
  type PropertyType "RecordingConfig" BrowserCustom = RecordingConfigProperty
  set newValue BrowserCustom {..}
    = BrowserCustom {recordingConfig = Prelude.pure newValue, ..}
instance Property "Tags" BrowserCustom where
  type PropertyType "Tags" BrowserCustom = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue BrowserCustom {..}
    = BrowserCustom {tags = Prelude.pure newValue, ..}