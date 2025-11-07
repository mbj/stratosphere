module Stratosphere.Bedrock.DataSource.ContextEnrichmentConfigurationProperty (
        module Exports, ContextEnrichmentConfigurationProperty(..),
        mkContextEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.BedrockFoundationModelContextEnrichmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContextEnrichmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-contextenrichmentconfiguration.html>
    ContextEnrichmentConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-contextenrichmentconfiguration.html#cfn-bedrock-datasource-contextenrichmentconfiguration-bedrockfoundationmodelconfiguration>
                                            bedrockFoundationModelConfiguration :: (Prelude.Maybe BedrockFoundationModelContextEnrichmentConfigurationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-contextenrichmentconfiguration.html#cfn-bedrock-datasource-contextenrichmentconfiguration-type>
                                            type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContextEnrichmentConfigurationProperty ::
  Value Prelude.Text -> ContextEnrichmentConfigurationProperty
mkContextEnrichmentConfigurationProperty type'
  = ContextEnrichmentConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       bedrockFoundationModelConfiguration = Prelude.Nothing}
instance ToResourceProperties ContextEnrichmentConfigurationProperty where
  toResourceProperties ContextEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ContextEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockFoundationModelConfiguration"
                                 Prelude.<$> bedrockFoundationModelConfiguration]))}
instance JSON.ToJSON ContextEnrichmentConfigurationProperty where
  toJSON ContextEnrichmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BedrockFoundationModelConfiguration"
                    Prelude.<$> bedrockFoundationModelConfiguration])))
instance Property "BedrockFoundationModelConfiguration" ContextEnrichmentConfigurationProperty where
  type PropertyType "BedrockFoundationModelConfiguration" ContextEnrichmentConfigurationProperty = BedrockFoundationModelContextEnrichmentConfigurationProperty
  set newValue ContextEnrichmentConfigurationProperty {..}
    = ContextEnrichmentConfigurationProperty
        {bedrockFoundationModelConfiguration = Prelude.pure newValue, ..}
instance Property "Type" ContextEnrichmentConfigurationProperty where
  type PropertyType "Type" ContextEnrichmentConfigurationProperty = Value Prelude.Text
  set newValue ContextEnrichmentConfigurationProperty {..}
    = ContextEnrichmentConfigurationProperty {type' = newValue, ..}