module Stratosphere.Bedrock.Flow.InlineCodeFlowNodeConfigurationProperty (
        InlineCodeFlowNodeConfigurationProperty(..),
        mkInlineCodeFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InlineCodeFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-inlinecodeflownodeconfiguration.html>
    InlineCodeFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-inlinecodeflownodeconfiguration.html#cfn-bedrock-flow-inlinecodeflownodeconfiguration-code>
                                             code :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-inlinecodeflownodeconfiguration.html#cfn-bedrock-flow-inlinecodeflownodeconfiguration-language>
                                             language :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInlineCodeFlowNodeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> InlineCodeFlowNodeConfigurationProperty
mkInlineCodeFlowNodeConfigurationProperty code language
  = InlineCodeFlowNodeConfigurationProperty
      {haddock_workaround_ = (), code = code, language = language}
instance ToResourceProperties InlineCodeFlowNodeConfigurationProperty where
  toResourceProperties InlineCodeFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.InlineCodeFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["Code" JSON..= code, "Language" JSON..= language]}
instance JSON.ToJSON InlineCodeFlowNodeConfigurationProperty where
  toJSON InlineCodeFlowNodeConfigurationProperty {..}
    = JSON.object ["Code" JSON..= code, "Language" JSON..= language]
instance Property "Code" InlineCodeFlowNodeConfigurationProperty where
  type PropertyType "Code" InlineCodeFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue InlineCodeFlowNodeConfigurationProperty {..}
    = InlineCodeFlowNodeConfigurationProperty {code = newValue, ..}
instance Property "Language" InlineCodeFlowNodeConfigurationProperty where
  type PropertyType "Language" InlineCodeFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue InlineCodeFlowNodeConfigurationProperty {..}
    = InlineCodeFlowNodeConfigurationProperty {language = newValue, ..}