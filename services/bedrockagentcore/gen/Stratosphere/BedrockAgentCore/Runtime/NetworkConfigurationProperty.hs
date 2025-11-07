module Stratosphere.BedrockAgentCore.Runtime.NetworkConfigurationProperty (
        module Exports, NetworkConfigurationProperty(..),
        mkNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Runtime.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-networkconfiguration.html>
    NetworkConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-networkconfiguration.html#cfn-bedrockagentcore-runtime-networkconfiguration-networkmode>
                                  networkMode :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-networkconfiguration.html#cfn-bedrockagentcore-runtime-networkconfiguration-networkmodeconfig>
                                  networkModeConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkConfigurationProperty ::
  Value Prelude.Text -> NetworkConfigurationProperty
mkNetworkConfigurationProperty networkMode
  = NetworkConfigurationProperty
      {haddock_workaround_ = (), networkMode = networkMode,
       networkModeConfig = Prelude.Nothing}
instance ToResourceProperties NetworkConfigurationProperty where
  toResourceProperties NetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Runtime.NetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkMode" JSON..= networkMode]
                           (Prelude.catMaybes
                              [(JSON..=) "NetworkModeConfig" Prelude.<$> networkModeConfig]))}
instance JSON.ToJSON NetworkConfigurationProperty where
  toJSON NetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkMode" JSON..= networkMode]
              (Prelude.catMaybes
                 [(JSON..=) "NetworkModeConfig" Prelude.<$> networkModeConfig])))
instance Property "NetworkMode" NetworkConfigurationProperty where
  type PropertyType "NetworkMode" NetworkConfigurationProperty = Value Prelude.Text
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty {networkMode = newValue, ..}
instance Property "NetworkModeConfig" NetworkConfigurationProperty where
  type PropertyType "NetworkModeConfig" NetworkConfigurationProperty = VpcConfigProperty
  set newValue NetworkConfigurationProperty {..}
    = NetworkConfigurationProperty
        {networkModeConfig = Prelude.pure newValue, ..}