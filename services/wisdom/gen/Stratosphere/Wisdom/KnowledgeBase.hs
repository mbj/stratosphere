module Stratosphere.Wisdom.KnowledgeBase (
        module Exports, KnowledgeBase(..), mkKnowledgeBase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.RenderingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.ServerSideEncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.SourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.VectorIngestionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data KnowledgeBase
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html>
    KnowledgeBase {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-knowledgebasetype>
                   knowledgeBaseType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-renderingconfiguration>
                   renderingConfiguration :: (Prelude.Maybe RenderingConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-serversideencryptionconfiguration>
                   serverSideEncryptionConfiguration :: (Prelude.Maybe ServerSideEncryptionConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-sourceconfiguration>
                   sourceConfiguration :: (Prelude.Maybe SourceConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-knowledgebase.html#cfn-wisdom-knowledgebase-vectoringestionconfiguration>
                   vectorIngestionConfiguration :: (Prelude.Maybe VectorIngestionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBase ::
  Value Prelude.Text -> Value Prelude.Text -> KnowledgeBase
mkKnowledgeBase knowledgeBaseType name
  = KnowledgeBase
      {haddock_workaround_ = (), knowledgeBaseType = knowledgeBaseType,
       name = name, description = Prelude.Nothing,
       renderingConfiguration = Prelude.Nothing,
       serverSideEncryptionConfiguration = Prelude.Nothing,
       sourceConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       vectorIngestionConfiguration = Prelude.Nothing}
instance ToResourceProperties KnowledgeBase where
  toResourceProperties KnowledgeBase {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KnowledgeBaseType" JSON..= knowledgeBaseType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RenderingConfiguration"
                                 Prelude.<$> renderingConfiguration,
                               (JSON..=) "ServerSideEncryptionConfiguration"
                                 Prelude.<$> serverSideEncryptionConfiguration,
                               (JSON..=) "SourceConfiguration" Prelude.<$> sourceConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VectorIngestionConfiguration"
                                 Prelude.<$> vectorIngestionConfiguration]))}
instance JSON.ToJSON KnowledgeBase where
  toJSON KnowledgeBase {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KnowledgeBaseType" JSON..= knowledgeBaseType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RenderingConfiguration"
                    Prelude.<$> renderingConfiguration,
                  (JSON..=) "ServerSideEncryptionConfiguration"
                    Prelude.<$> serverSideEncryptionConfiguration,
                  (JSON..=) "SourceConfiguration" Prelude.<$> sourceConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VectorIngestionConfiguration"
                    Prelude.<$> vectorIngestionConfiguration])))
instance Property "Description" KnowledgeBase where
  type PropertyType "Description" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {description = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseType" KnowledgeBase where
  type PropertyType "KnowledgeBaseType" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {knowledgeBaseType = newValue, ..}
instance Property "Name" KnowledgeBase where
  type PropertyType "Name" KnowledgeBase = Value Prelude.Text
  set newValue KnowledgeBase {..}
    = KnowledgeBase {name = newValue, ..}
instance Property "RenderingConfiguration" KnowledgeBase where
  type PropertyType "RenderingConfiguration" KnowledgeBase = RenderingConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase
        {renderingConfiguration = Prelude.pure newValue, ..}
instance Property "ServerSideEncryptionConfiguration" KnowledgeBase where
  type PropertyType "ServerSideEncryptionConfiguration" KnowledgeBase = ServerSideEncryptionConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase
        {serverSideEncryptionConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" KnowledgeBase where
  type PropertyType "SourceConfiguration" KnowledgeBase = SourceConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase {sourceConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" KnowledgeBase where
  type PropertyType "Tags" KnowledgeBase = [Tag]
  set newValue KnowledgeBase {..}
    = KnowledgeBase {tags = Prelude.pure newValue, ..}
instance Property "VectorIngestionConfiguration" KnowledgeBase where
  type PropertyType "VectorIngestionConfiguration" KnowledgeBase = VectorIngestionConfigurationProperty
  set newValue KnowledgeBase {..}
    = KnowledgeBase
        {vectorIngestionConfiguration = Prelude.pure newValue, ..}