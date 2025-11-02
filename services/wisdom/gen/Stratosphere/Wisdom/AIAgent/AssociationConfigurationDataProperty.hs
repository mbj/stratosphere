module Stratosphere.Wisdom.AIAgent.AssociationConfigurationDataProperty (
        module Exports, AssociationConfigurationDataProperty(..),
        mkAssociationConfigurationDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.KnowledgeBaseAssociationConfigurationDataProperty as Exports
import Stratosphere.ResourceProperties
data AssociationConfigurationDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-associationconfigurationdata.html>
    AssociationConfigurationDataProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-associationconfigurationdata.html#cfn-wisdom-aiagent-associationconfigurationdata-knowledgebaseassociationconfigurationdata>
                                          knowledgeBaseAssociationConfigurationData :: KnowledgeBaseAssociationConfigurationDataProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationConfigurationDataProperty ::
  KnowledgeBaseAssociationConfigurationDataProperty
  -> AssociationConfigurationDataProperty
mkAssociationConfigurationDataProperty
  knowledgeBaseAssociationConfigurationData
  = AssociationConfigurationDataProperty
      {haddock_workaround_ = (),
       knowledgeBaseAssociationConfigurationData = knowledgeBaseAssociationConfigurationData}
instance ToResourceProperties AssociationConfigurationDataProperty where
  toResourceProperties AssociationConfigurationDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent.AssociationConfigurationData",
         supportsTags = Prelude.False,
         properties = ["KnowledgeBaseAssociationConfigurationData"
                         JSON..= knowledgeBaseAssociationConfigurationData]}
instance JSON.ToJSON AssociationConfigurationDataProperty where
  toJSON AssociationConfigurationDataProperty {..}
    = JSON.object
        ["KnowledgeBaseAssociationConfigurationData"
           JSON..= knowledgeBaseAssociationConfigurationData]
instance Property "KnowledgeBaseAssociationConfigurationData" AssociationConfigurationDataProperty where
  type PropertyType "KnowledgeBaseAssociationConfigurationData" AssociationConfigurationDataProperty = KnowledgeBaseAssociationConfigurationDataProperty
  set newValue AssociationConfigurationDataProperty {..}
    = AssociationConfigurationDataProperty
        {knowledgeBaseAssociationConfigurationData = newValue, ..}