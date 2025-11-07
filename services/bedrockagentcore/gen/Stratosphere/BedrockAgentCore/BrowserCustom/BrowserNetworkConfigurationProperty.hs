module Stratosphere.BedrockAgentCore.BrowserCustom.BrowserNetworkConfigurationProperty (
        module Exports, BrowserNetworkConfigurationProperty(..),
        mkBrowserNetworkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.BrowserCustom.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BrowserNetworkConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html>
    BrowserNetworkConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html#cfn-bedrockagentcore-browsercustom-browsernetworkconfiguration-networkmode>
                                         networkMode :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html#cfn-bedrockagentcore-browsercustom-browsernetworkconfiguration-vpcconfig>
                                         vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBrowserNetworkConfigurationProperty ::
  Value Prelude.Text -> BrowserNetworkConfigurationProperty
mkBrowserNetworkConfigurationProperty networkMode
  = BrowserNetworkConfigurationProperty
      {haddock_workaround_ = (), networkMode = networkMode,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties BrowserNetworkConfigurationProperty where
  toResourceProperties BrowserNetworkConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::BrowserCustom.BrowserNetworkConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkMode" JSON..= networkMode]
                           (Prelude.catMaybes [(JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON BrowserNetworkConfigurationProperty where
  toJSON BrowserNetworkConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkMode" JSON..= networkMode]
              (Prelude.catMaybes [(JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "NetworkMode" BrowserNetworkConfigurationProperty where
  type PropertyType "NetworkMode" BrowserNetworkConfigurationProperty = Value Prelude.Text
  set newValue BrowserNetworkConfigurationProperty {..}
    = BrowserNetworkConfigurationProperty {networkMode = newValue, ..}
instance Property "VpcConfig" BrowserNetworkConfigurationProperty where
  type PropertyType "VpcConfig" BrowserNetworkConfigurationProperty = VpcConfigProperty
  set newValue BrowserNetworkConfigurationProperty {..}
    = BrowserNetworkConfigurationProperty
        {vpcConfig = Prelude.pure newValue, ..}