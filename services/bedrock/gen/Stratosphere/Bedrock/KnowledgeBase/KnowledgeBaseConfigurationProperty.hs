module Stratosphere.Bedrock.KnowledgeBase.KnowledgeBaseConfigurationProperty (
        module Exports, KnowledgeBaseConfigurationProperty(..),
        mkKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.VectorKnowledgeBaseConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBaseConfigurationProperty
  = KnowledgeBaseConfigurationProperty {type' :: (Value Prelude.Text),
                                        vectorKnowledgeBaseConfiguration :: VectorKnowledgeBaseConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text
  -> VectorKnowledgeBaseConfigurationProperty
     -> KnowledgeBaseConfigurationProperty
mkKnowledgeBaseConfigurationProperty
  type'
  vectorKnowledgeBaseConfiguration
  = KnowledgeBaseConfigurationProperty
      {type' = type',
       vectorKnowledgeBaseConfiguration = vectorKnowledgeBaseConfiguration}
instance ToResourceProperties KnowledgeBaseConfigurationProperty where
  toResourceProperties KnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.KnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type',
                       "VectorKnowledgeBaseConfiguration"
                         JSON..= vectorKnowledgeBaseConfiguration]}
instance JSON.ToJSON KnowledgeBaseConfigurationProperty where
  toJSON KnowledgeBaseConfigurationProperty {..}
    = JSON.object
        ["Type" JSON..= type',
         "VectorKnowledgeBaseConfiguration"
           JSON..= vectorKnowledgeBaseConfiguration]
instance Property "Type" KnowledgeBaseConfigurationProperty where
  type PropertyType "Type" KnowledgeBaseConfigurationProperty = Value Prelude.Text
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty {type' = newValue, ..}
instance Property "VectorKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty where
  type PropertyType "VectorKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty = VectorKnowledgeBaseConfigurationProperty
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty
        {vectorKnowledgeBaseConfiguration = newValue, ..}