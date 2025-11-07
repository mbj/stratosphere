module Stratosphere.Bedrock.KnowledgeBase.SqlKnowledgeBaseConfigurationProperty (
        module Exports, SqlKnowledgeBaseConfigurationProperty(..),
        mkSqlKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.RedshiftConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlKnowledgeBaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-sqlknowledgebaseconfiguration.html>
    SqlKnowledgeBaseConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-sqlknowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-sqlknowledgebaseconfiguration-redshiftconfiguration>
                                           redshiftConfiguration :: (Prelude.Maybe RedshiftConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-sqlknowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-sqlknowledgebaseconfiguration-type>
                                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text -> SqlKnowledgeBaseConfigurationProperty
mkSqlKnowledgeBaseConfigurationProperty type'
  = SqlKnowledgeBaseConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       redshiftConfiguration = Prelude.Nothing}
instance ToResourceProperties SqlKnowledgeBaseConfigurationProperty where
  toResourceProperties SqlKnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.SqlKnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "RedshiftConfiguration"
                                 Prelude.<$> redshiftConfiguration]))}
instance JSON.ToJSON SqlKnowledgeBaseConfigurationProperty where
  toJSON SqlKnowledgeBaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "RedshiftConfiguration"
                    Prelude.<$> redshiftConfiguration])))
instance Property "RedshiftConfiguration" SqlKnowledgeBaseConfigurationProperty where
  type PropertyType "RedshiftConfiguration" SqlKnowledgeBaseConfigurationProperty = RedshiftConfigurationProperty
  set newValue SqlKnowledgeBaseConfigurationProperty {..}
    = SqlKnowledgeBaseConfigurationProperty
        {redshiftConfiguration = Prelude.pure newValue, ..}
instance Property "Type" SqlKnowledgeBaseConfigurationProperty where
  type PropertyType "Type" SqlKnowledgeBaseConfigurationProperty = Value Prelude.Text
  set newValue SqlKnowledgeBaseConfigurationProperty {..}
    = SqlKnowledgeBaseConfigurationProperty {type' = newValue, ..}