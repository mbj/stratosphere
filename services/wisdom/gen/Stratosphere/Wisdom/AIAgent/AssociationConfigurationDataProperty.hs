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
  = AssociationConfigurationDataProperty {knowledgeBaseAssociationConfigurationData :: KnowledgeBaseAssociationConfigurationDataProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssociationConfigurationDataProperty ::
  KnowledgeBaseAssociationConfigurationDataProperty
  -> AssociationConfigurationDataProperty
mkAssociationConfigurationDataProperty
  knowledgeBaseAssociationConfigurationData
  = AssociationConfigurationDataProperty
      {knowledgeBaseAssociationConfigurationData = knowledgeBaseAssociationConfigurationData}
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
  set newValue AssociationConfigurationDataProperty {}
    = AssociationConfigurationDataProperty
        {knowledgeBaseAssociationConfigurationData = newValue, ..}