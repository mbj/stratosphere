module Stratosphere.Bedrock.KnowledgeBase.KnowledgeBaseConfigurationProperty (
        module Exports, KnowledgeBaseConfigurationProperty(..),
        mkKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.KendraKnowledgeBaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.SqlKnowledgeBaseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.VectorKnowledgeBaseConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html>
    KnowledgeBaseConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-kendraknowledgebaseconfiguration>
                                        kendraKnowledgeBaseConfiguration :: (Prelude.Maybe KendraKnowledgeBaseConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-sqlknowledgebaseconfiguration>
                                        sqlKnowledgeBaseConfiguration :: (Prelude.Maybe SqlKnowledgeBaseConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-type>
                                        type' :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-vectorknowledgebaseconfiguration>
                                        vectorKnowledgeBaseConfiguration :: (Prelude.Maybe VectorKnowledgeBaseConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text -> KnowledgeBaseConfigurationProperty
mkKnowledgeBaseConfigurationProperty type'
  = KnowledgeBaseConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       kendraKnowledgeBaseConfiguration = Prelude.Nothing,
       sqlKnowledgeBaseConfiguration = Prelude.Nothing,
       vectorKnowledgeBaseConfiguration = Prelude.Nothing}
instance ToResourceProperties KnowledgeBaseConfigurationProperty where
  toResourceProperties KnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.KnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "KendraKnowledgeBaseConfiguration"
                                 Prelude.<$> kendraKnowledgeBaseConfiguration,
                               (JSON..=) "SqlKnowledgeBaseConfiguration"
                                 Prelude.<$> sqlKnowledgeBaseConfiguration,
                               (JSON..=) "VectorKnowledgeBaseConfiguration"
                                 Prelude.<$> vectorKnowledgeBaseConfiguration]))}
instance JSON.ToJSON KnowledgeBaseConfigurationProperty where
  toJSON KnowledgeBaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "KendraKnowledgeBaseConfiguration"
                    Prelude.<$> kendraKnowledgeBaseConfiguration,
                  (JSON..=) "SqlKnowledgeBaseConfiguration"
                    Prelude.<$> sqlKnowledgeBaseConfiguration,
                  (JSON..=) "VectorKnowledgeBaseConfiguration"
                    Prelude.<$> vectorKnowledgeBaseConfiguration])))
instance Property "KendraKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty where
  type PropertyType "KendraKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty = KendraKnowledgeBaseConfigurationProperty
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty
        {kendraKnowledgeBaseConfiguration = Prelude.pure newValue, ..}
instance Property "SqlKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty where
  type PropertyType "SqlKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty = SqlKnowledgeBaseConfigurationProperty
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty
        {sqlKnowledgeBaseConfiguration = Prelude.pure newValue, ..}
instance Property "Type" KnowledgeBaseConfigurationProperty where
  type PropertyType "Type" KnowledgeBaseConfigurationProperty = Value Prelude.Text
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty {type' = newValue, ..}
instance Property "VectorKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty where
  type PropertyType "VectorKnowledgeBaseConfiguration" KnowledgeBaseConfigurationProperty = VectorKnowledgeBaseConfigurationProperty
  set newValue KnowledgeBaseConfigurationProperty {..}
    = KnowledgeBaseConfigurationProperty
        {vectorKnowledgeBaseConfiguration = Prelude.pure newValue, ..}