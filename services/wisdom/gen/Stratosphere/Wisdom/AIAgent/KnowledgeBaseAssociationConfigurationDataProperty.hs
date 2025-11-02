module Stratosphere.Wisdom.AIAgent.KnowledgeBaseAssociationConfigurationDataProperty (
        module Exports,
        KnowledgeBaseAssociationConfigurationDataProperty(..),
        mkKnowledgeBaseAssociationConfigurationDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBaseAssociationConfigurationDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-knowledgebaseassociationconfigurationdata.html>
    KnowledgeBaseAssociationConfigurationDataProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-knowledgebaseassociationconfigurationdata.html#cfn-wisdom-aiagent-knowledgebaseassociationconfigurationdata-contenttagfilter>
                                                       contentTagFilter :: (Prelude.Maybe TagFilterProperty),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-knowledgebaseassociationconfigurationdata.html#cfn-wisdom-aiagent-knowledgebaseassociationconfigurationdata-maxresults>
                                                       maxResults :: (Prelude.Maybe (Value Prelude.Double)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-knowledgebaseassociationconfigurationdata.html#cfn-wisdom-aiagent-knowledgebaseassociationconfigurationdata-overrideknowledgebasesearchtype>
                                                       overrideKnowledgeBaseSearchType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseAssociationConfigurationDataProperty ::
  KnowledgeBaseAssociationConfigurationDataProperty
mkKnowledgeBaseAssociationConfigurationDataProperty
  = KnowledgeBaseAssociationConfigurationDataProperty
      {haddock_workaround_ = (), contentTagFilter = Prelude.Nothing,
       maxResults = Prelude.Nothing,
       overrideKnowledgeBaseSearchType = Prelude.Nothing}
instance ToResourceProperties KnowledgeBaseAssociationConfigurationDataProperty where
  toResourceProperties
    KnowledgeBaseAssociationConfigurationDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.KnowledgeBaseAssociationConfigurationData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentTagFilter" Prelude.<$> contentTagFilter,
                            (JSON..=) "MaxResults" Prelude.<$> maxResults,
                            (JSON..=) "OverrideKnowledgeBaseSearchType"
                              Prelude.<$> overrideKnowledgeBaseSearchType])}
instance JSON.ToJSON KnowledgeBaseAssociationConfigurationDataProperty where
  toJSON KnowledgeBaseAssociationConfigurationDataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentTagFilter" Prelude.<$> contentTagFilter,
               (JSON..=) "MaxResults" Prelude.<$> maxResults,
               (JSON..=) "OverrideKnowledgeBaseSearchType"
                 Prelude.<$> overrideKnowledgeBaseSearchType]))
instance Property "ContentTagFilter" KnowledgeBaseAssociationConfigurationDataProperty where
  type PropertyType "ContentTagFilter" KnowledgeBaseAssociationConfigurationDataProperty = TagFilterProperty
  set newValue KnowledgeBaseAssociationConfigurationDataProperty {..}
    = KnowledgeBaseAssociationConfigurationDataProperty
        {contentTagFilter = Prelude.pure newValue, ..}
instance Property "MaxResults" KnowledgeBaseAssociationConfigurationDataProperty where
  type PropertyType "MaxResults" KnowledgeBaseAssociationConfigurationDataProperty = Value Prelude.Double
  set newValue KnowledgeBaseAssociationConfigurationDataProperty {..}
    = KnowledgeBaseAssociationConfigurationDataProperty
        {maxResults = Prelude.pure newValue, ..}
instance Property "OverrideKnowledgeBaseSearchType" KnowledgeBaseAssociationConfigurationDataProperty where
  type PropertyType "OverrideKnowledgeBaseSearchType" KnowledgeBaseAssociationConfigurationDataProperty = Value Prelude.Text
  set newValue KnowledgeBaseAssociationConfigurationDataProperty {..}
    = KnowledgeBaseAssociationConfigurationDataProperty
        {overrideKnowledgeBaseSearchType = Prelude.pure newValue, ..}