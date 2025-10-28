module Stratosphere.Kendra.Index.DocumentMetadataConfigurationProperty (
        module Exports, DocumentMetadataConfigurationProperty(..),
        mkDocumentMetadataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.Index.RelevanceProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.Index.SearchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentMetadataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html>
    DocumentMetadataConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-name>
                                           name :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-relevance>
                                           relevance :: (Prelude.Maybe RelevanceProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-search>
                                           search :: (Prelude.Maybe SearchProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-type>
                                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentMetadataConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DocumentMetadataConfigurationProperty
mkDocumentMetadataConfigurationProperty name type'
  = DocumentMetadataConfigurationProperty
      {haddock_workaround_ = (), name = name, type' = type',
       relevance = Prelude.Nothing, search = Prelude.Nothing}
instance ToResourceProperties DocumentMetadataConfigurationProperty where
  toResourceProperties DocumentMetadataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.DocumentMetadataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Relevance" Prelude.<$> relevance,
                               (JSON..=) "Search" Prelude.<$> search]))}
instance JSON.ToJSON DocumentMetadataConfigurationProperty where
  toJSON DocumentMetadataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Relevance" Prelude.<$> relevance,
                  (JSON..=) "Search" Prelude.<$> search])))
instance Property "Name" DocumentMetadataConfigurationProperty where
  type PropertyType "Name" DocumentMetadataConfigurationProperty = Value Prelude.Text
  set newValue DocumentMetadataConfigurationProperty {..}
    = DocumentMetadataConfigurationProperty {name = newValue, ..}
instance Property "Relevance" DocumentMetadataConfigurationProperty where
  type PropertyType "Relevance" DocumentMetadataConfigurationProperty = RelevanceProperty
  set newValue DocumentMetadataConfigurationProperty {..}
    = DocumentMetadataConfigurationProperty
        {relevance = Prelude.pure newValue, ..}
instance Property "Search" DocumentMetadataConfigurationProperty where
  type PropertyType "Search" DocumentMetadataConfigurationProperty = SearchProperty
  set newValue DocumentMetadataConfigurationProperty {..}
    = DocumentMetadataConfigurationProperty
        {search = Prelude.pure newValue, ..}
instance Property "Type" DocumentMetadataConfigurationProperty where
  type PropertyType "Type" DocumentMetadataConfigurationProperty = Value Prelude.Text
  set newValue DocumentMetadataConfigurationProperty {..}
    = DocumentMetadataConfigurationProperty {type' = newValue, ..}