module Stratosphere.BedrockAgentCore.GatewayTarget.ApiSchemaConfigurationProperty (
        module Exports, ApiSchemaConfigurationProperty(..),
        mkApiSchemaConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiSchemaConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apischemaconfiguration.html>
    ApiSchemaConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apischemaconfiguration.html#cfn-bedrockagentcore-gatewaytarget-apischemaconfiguration-inlinepayload>
                                    inlinePayload :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apischemaconfiguration.html#cfn-bedrockagentcore-gatewaytarget-apischemaconfiguration-s3>
                                    s3 :: (Prelude.Maybe S3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiSchemaConfigurationProperty :: ApiSchemaConfigurationProperty
mkApiSchemaConfigurationProperty
  = ApiSchemaConfigurationProperty
      {haddock_workaround_ = (), inlinePayload = Prelude.Nothing,
       s3 = Prelude.Nothing}
instance ToResourceProperties ApiSchemaConfigurationProperty where
  toResourceProperties ApiSchemaConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.ApiSchemaConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InlinePayload" Prelude.<$> inlinePayload,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON ApiSchemaConfigurationProperty where
  toJSON ApiSchemaConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InlinePayload" Prelude.<$> inlinePayload,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "InlinePayload" ApiSchemaConfigurationProperty where
  type PropertyType "InlinePayload" ApiSchemaConfigurationProperty = Value Prelude.Text
  set newValue ApiSchemaConfigurationProperty {..}
    = ApiSchemaConfigurationProperty
        {inlinePayload = Prelude.pure newValue, ..}
instance Property "S3" ApiSchemaConfigurationProperty where
  type PropertyType "S3" ApiSchemaConfigurationProperty = S3ConfigurationProperty
  set newValue ApiSchemaConfigurationProperty {..}
    = ApiSchemaConfigurationProperty {s3 = Prelude.pure newValue, ..}