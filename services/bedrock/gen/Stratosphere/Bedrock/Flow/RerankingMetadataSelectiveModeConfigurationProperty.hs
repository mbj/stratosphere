module Stratosphere.Bedrock.Flow.RerankingMetadataSelectiveModeConfigurationProperty (
        module Exports,
        RerankingMetadataSelectiveModeConfigurationProperty(..),
        mkRerankingMetadataSelectiveModeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.FieldForRerankingProperty as Exports
import Stratosphere.ResourceProperties
data RerankingMetadataSelectiveModeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html>
    RerankingMetadataSelectiveModeConfigurationProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flow-rerankingmetadataselectivemodeconfiguration-fieldstoexclude>
                                                         fieldsToExclude :: (Prelude.Maybe [FieldForRerankingProperty]),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flow-rerankingmetadataselectivemodeconfiguration-fieldstoinclude>
                                                         fieldsToInclude :: (Prelude.Maybe [FieldForRerankingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRerankingMetadataSelectiveModeConfigurationProperty ::
  RerankingMetadataSelectiveModeConfigurationProperty
mkRerankingMetadataSelectiveModeConfigurationProperty
  = RerankingMetadataSelectiveModeConfigurationProperty
      {haddock_workaround_ = (), fieldsToExclude = Prelude.Nothing,
       fieldsToInclude = Prelude.Nothing}
instance ToResourceProperties RerankingMetadataSelectiveModeConfigurationProperty where
  toResourceProperties
    RerankingMetadataSelectiveModeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.RerankingMetadataSelectiveModeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldsToExclude" Prelude.<$> fieldsToExclude,
                            (JSON..=) "FieldsToInclude" Prelude.<$> fieldsToInclude])}
instance JSON.ToJSON RerankingMetadataSelectiveModeConfigurationProperty where
  toJSON RerankingMetadataSelectiveModeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldsToExclude" Prelude.<$> fieldsToExclude,
               (JSON..=) "FieldsToInclude" Prelude.<$> fieldsToInclude]))
instance Property "FieldsToExclude" RerankingMetadataSelectiveModeConfigurationProperty where
  type PropertyType "FieldsToExclude" RerankingMetadataSelectiveModeConfigurationProperty = [FieldForRerankingProperty]
  set
    newValue
    RerankingMetadataSelectiveModeConfigurationProperty {..}
    = RerankingMetadataSelectiveModeConfigurationProperty
        {fieldsToExclude = Prelude.pure newValue, ..}
instance Property "FieldsToInclude" RerankingMetadataSelectiveModeConfigurationProperty where
  type PropertyType "FieldsToInclude" RerankingMetadataSelectiveModeConfigurationProperty = [FieldForRerankingProperty]
  set
    newValue
    RerankingMetadataSelectiveModeConfigurationProperty {..}
    = RerankingMetadataSelectiveModeConfigurationProperty
        {fieldsToInclude = Prelude.pure newValue, ..}