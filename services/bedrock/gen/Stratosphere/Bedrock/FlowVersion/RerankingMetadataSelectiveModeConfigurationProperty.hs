module Stratosphere.Bedrock.FlowVersion.RerankingMetadataSelectiveModeConfigurationProperty (
        module Exports,
        RerankingMetadataSelectiveModeConfigurationProperty(..),
        mkRerankingMetadataSelectiveModeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.FieldForRerankingProperty as Exports
import Stratosphere.ResourceProperties
data RerankingMetadataSelectiveModeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-rerankingmetadataselectivemodeconfiguration.html>
    RerankingMetadataSelectiveModeConfigurationProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flowversion-rerankingmetadataselectivemodeconfiguration-fieldstoexclude>
                                                         fieldsToExclude :: (Prelude.Maybe [FieldForRerankingProperty]),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flowversion-rerankingmetadataselectivemodeconfiguration-fieldstoinclude>
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
        {awsType = "AWS::Bedrock::FlowVersion.RerankingMetadataSelectiveModeConfiguration",
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