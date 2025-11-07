module Stratosphere.Bedrock.FlowVersion.MetadataConfigurationForRerankingProperty (
        module Exports, MetadataConfigurationForRerankingProperty(..),
        mkMetadataConfigurationForRerankingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.RerankingMetadataSelectiveModeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataConfigurationForRerankingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-metadataconfigurationforreranking.html>
    MetadataConfigurationForRerankingProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-metadataconfigurationforreranking.html#cfn-bedrock-flowversion-metadataconfigurationforreranking-selectionmode>
                                               selectionMode :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-metadataconfigurationforreranking.html#cfn-bedrock-flowversion-metadataconfigurationforreranking-selectivemodeconfiguration>
                                               selectiveModeConfiguration :: (Prelude.Maybe RerankingMetadataSelectiveModeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataConfigurationForRerankingProperty ::
  Value Prelude.Text -> MetadataConfigurationForRerankingProperty
mkMetadataConfigurationForRerankingProperty selectionMode
  = MetadataConfigurationForRerankingProperty
      {haddock_workaround_ = (), selectionMode = selectionMode,
       selectiveModeConfiguration = Prelude.Nothing}
instance ToResourceProperties MetadataConfigurationForRerankingProperty where
  toResourceProperties MetadataConfigurationForRerankingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.MetadataConfigurationForReranking",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SelectionMode" JSON..= selectionMode]
                           (Prelude.catMaybes
                              [(JSON..=) "SelectiveModeConfiguration"
                                 Prelude.<$> selectiveModeConfiguration]))}
instance JSON.ToJSON MetadataConfigurationForRerankingProperty where
  toJSON MetadataConfigurationForRerankingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SelectionMode" JSON..= selectionMode]
              (Prelude.catMaybes
                 [(JSON..=) "SelectiveModeConfiguration"
                    Prelude.<$> selectiveModeConfiguration])))
instance Property "SelectionMode" MetadataConfigurationForRerankingProperty where
  type PropertyType "SelectionMode" MetadataConfigurationForRerankingProperty = Value Prelude.Text
  set newValue MetadataConfigurationForRerankingProperty {..}
    = MetadataConfigurationForRerankingProperty
        {selectionMode = newValue, ..}
instance Property "SelectiveModeConfiguration" MetadataConfigurationForRerankingProperty where
  type PropertyType "SelectiveModeConfiguration" MetadataConfigurationForRerankingProperty = RerankingMetadataSelectiveModeConfigurationProperty
  set newValue MetadataConfigurationForRerankingProperty {..}
    = MetadataConfigurationForRerankingProperty
        {selectiveModeConfiguration = Prelude.pure newValue, ..}