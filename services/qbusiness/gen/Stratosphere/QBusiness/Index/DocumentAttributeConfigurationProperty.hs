module Stratosphere.QBusiness.Index.DocumentAttributeConfigurationProperty (
        DocumentAttributeConfigurationProperty(..),
        mkDocumentAttributeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentAttributeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-documentattributeconfiguration.html>
    DocumentAttributeConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-documentattributeconfiguration.html#cfn-qbusiness-index-documentattributeconfiguration-name>
                                            name :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-documentattributeconfiguration.html#cfn-qbusiness-index-documentattributeconfiguration-search>
                                            search :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-index-documentattributeconfiguration.html#cfn-qbusiness-index-documentattributeconfiguration-type>
                                            type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentAttributeConfigurationProperty ::
  DocumentAttributeConfigurationProperty
mkDocumentAttributeConfigurationProperty
  = DocumentAttributeConfigurationProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       search = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DocumentAttributeConfigurationProperty where
  toResourceProperties DocumentAttributeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::Index.DocumentAttributeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Search" Prelude.<$> search,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DocumentAttributeConfigurationProperty where
  toJSON DocumentAttributeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Search" Prelude.<$> search,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Name" DocumentAttributeConfigurationProperty where
  type PropertyType "Name" DocumentAttributeConfigurationProperty = Value Prelude.Text
  set newValue DocumentAttributeConfigurationProperty {..}
    = DocumentAttributeConfigurationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Search" DocumentAttributeConfigurationProperty where
  type PropertyType "Search" DocumentAttributeConfigurationProperty = Value Prelude.Text
  set newValue DocumentAttributeConfigurationProperty {..}
    = DocumentAttributeConfigurationProperty
        {search = Prelude.pure newValue, ..}
instance Property "Type" DocumentAttributeConfigurationProperty where
  type PropertyType "Type" DocumentAttributeConfigurationProperty = Value Prelude.Text
  set newValue DocumentAttributeConfigurationProperty {..}
    = DocumentAttributeConfigurationProperty
        {type' = Prelude.pure newValue, ..}