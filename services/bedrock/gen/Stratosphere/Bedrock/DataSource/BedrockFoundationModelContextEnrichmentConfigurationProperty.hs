module Stratosphere.Bedrock.DataSource.BedrockFoundationModelContextEnrichmentConfigurationProperty (
        module Exports,
        BedrockFoundationModelContextEnrichmentConfigurationProperty(..),
        mkBedrockFoundationModelContextEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.EnrichmentStrategyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockFoundationModelContextEnrichmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-bedrockfoundationmodelcontextenrichmentconfiguration.html>
    BedrockFoundationModelContextEnrichmentConfigurationProperty {haddock_workaround_ :: (),
                                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-bedrockfoundationmodelcontextenrichmentconfiguration.html#cfn-bedrock-datasource-bedrockfoundationmodelcontextenrichmentconfiguration-enrichmentstrategyconfiguration>
                                                                  enrichmentStrategyConfiguration :: EnrichmentStrategyConfigurationProperty,
                                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-bedrockfoundationmodelcontextenrichmentconfiguration.html#cfn-bedrock-datasource-bedrockfoundationmodelcontextenrichmentconfiguration-modelarn>
                                                                  modelArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockFoundationModelContextEnrichmentConfigurationProperty ::
  EnrichmentStrategyConfigurationProperty
  -> Value Prelude.Text
     -> BedrockFoundationModelContextEnrichmentConfigurationProperty
mkBedrockFoundationModelContextEnrichmentConfigurationProperty
  enrichmentStrategyConfiguration
  modelArn
  = BedrockFoundationModelContextEnrichmentConfigurationProperty
      {haddock_workaround_ = (),
       enrichmentStrategyConfiguration = enrichmentStrategyConfiguration,
       modelArn = modelArn}
instance ToResourceProperties BedrockFoundationModelContextEnrichmentConfigurationProperty where
  toResourceProperties
    BedrockFoundationModelContextEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.BedrockFoundationModelContextEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = ["EnrichmentStrategyConfiguration"
                         JSON..= enrichmentStrategyConfiguration,
                       "ModelArn" JSON..= modelArn]}
instance JSON.ToJSON BedrockFoundationModelContextEnrichmentConfigurationProperty where
  toJSON
    BedrockFoundationModelContextEnrichmentConfigurationProperty {..}
    = JSON.object
        ["EnrichmentStrategyConfiguration"
           JSON..= enrichmentStrategyConfiguration,
         "ModelArn" JSON..= modelArn]
instance Property "EnrichmentStrategyConfiguration" BedrockFoundationModelContextEnrichmentConfigurationProperty where
  type PropertyType "EnrichmentStrategyConfiguration" BedrockFoundationModelContextEnrichmentConfigurationProperty = EnrichmentStrategyConfigurationProperty
  set
    newValue
    BedrockFoundationModelContextEnrichmentConfigurationProperty {..}
    = BedrockFoundationModelContextEnrichmentConfigurationProperty
        {enrichmentStrategyConfiguration = newValue, ..}
instance Property "ModelArn" BedrockFoundationModelContextEnrichmentConfigurationProperty where
  type PropertyType "ModelArn" BedrockFoundationModelContextEnrichmentConfigurationProperty = Value Prelude.Text
  set
    newValue
    BedrockFoundationModelContextEnrichmentConfigurationProperty {..}
    = BedrockFoundationModelContextEnrichmentConfigurationProperty
        {modelArn = newValue, ..}