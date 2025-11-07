module Stratosphere.BedrockAgentCore.CodeInterpreterCustom.CodeInterpreterNetworkConfigurationProperty (
        module Exports, CodeInterpreterNetworkConfigurationProperty(..),
        mkCodeInterpreterNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.CodeInterpreterCustom.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeInterpreterNetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-codeinterpreternetworkconfiguration.html>
    CodeInterpreterNetworkConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-codeinterpreternetworkconfiguration.html#cfn-bedrockagentcore-codeinterpretercustom-codeinterpreternetworkconfiguration-networkmode>
                                                 networkMode :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-codeinterpreternetworkconfiguration.html#cfn-bedrockagentcore-codeinterpretercustom-codeinterpreternetworkconfiguration-vpcconfig>
                                                 vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeInterpreterNetworkConfigurationProperty ::
  Value Prelude.Text -> CodeInterpreterNetworkConfigurationProperty
mkCodeInterpreterNetworkConfigurationProperty networkMode
  = CodeInterpreterNetworkConfigurationProperty
      {haddock_workaround_ = (), networkMode = networkMode,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties CodeInterpreterNetworkConfigurationProperty where
  toResourceProperties
    CodeInterpreterNetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::CodeInterpreterCustom.CodeInterpreterNetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkMode" JSON..= networkMode]
                           (Prelude.catMaybes [(JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON CodeInterpreterNetworkConfigurationProperty where
  toJSON CodeInterpreterNetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkMode" JSON..= networkMode]
              (Prelude.catMaybes [(JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "NetworkMode" CodeInterpreterNetworkConfigurationProperty where
  type PropertyType "NetworkMode" CodeInterpreterNetworkConfigurationProperty = Value Prelude.Text
  set newValue CodeInterpreterNetworkConfigurationProperty {..}
    = CodeInterpreterNetworkConfigurationProperty
        {networkMode = newValue, ..}
instance Property "VpcConfig" CodeInterpreterNetworkConfigurationProperty where
  type PropertyType "VpcConfig" CodeInterpreterNetworkConfigurationProperty = VpcConfigProperty
  set newValue CodeInterpreterNetworkConfigurationProperty {..}
    = CodeInterpreterNetworkConfigurationProperty
        {vpcConfig = Prelude.pure newValue, ..}