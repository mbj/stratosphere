module Stratosphere.CustomerProfiles.ObjectType (
        module Exports, ObjectType(..), mkObjectType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.ObjectType.FieldMapProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.ObjectType.KeyMapProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ObjectType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html>
    ObjectType {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-allowprofilecreation>
                allowProfileCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-description>
                description :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-domainname>
                domainName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-encryptionkey>
                encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-expirationdays>
                expirationDays :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-fields>
                fields :: (Prelude.Maybe [FieldMapProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-keys>
                keys :: (Prelude.Maybe [KeyMapProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-objecttypename>
                objectTypeName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-sourcelastupdatedtimestampformat>
                sourceLastUpdatedTimestampFormat :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-objecttype.html#cfn-customerprofiles-objecttype-templateid>
                templateId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectType ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ObjectType
mkObjectType description domainName objectTypeName
  = ObjectType
      {haddock_workaround_ = (), description = description,
       domainName = domainName, objectTypeName = objectTypeName,
       allowProfileCreation = Prelude.Nothing,
       encryptionKey = Prelude.Nothing, expirationDays = Prelude.Nothing,
       fields = Prelude.Nothing, keys = Prelude.Nothing,
       sourceLastUpdatedTimestampFormat = Prelude.Nothing,
       tags = Prelude.Nothing, templateId = Prelude.Nothing}
instance ToResourceProperties ObjectType where
  toResourceProperties ObjectType {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description,
                            "DomainName" JSON..= domainName,
                            "ObjectTypeName" JSON..= objectTypeName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowProfileCreation" Prelude.<$> allowProfileCreation,
                               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                               (JSON..=) "ExpirationDays" Prelude.<$> expirationDays,
                               (JSON..=) "Fields" Prelude.<$> fields,
                               (JSON..=) "Keys" Prelude.<$> keys,
                               (JSON..=) "SourceLastUpdatedTimestampFormat"
                                 Prelude.<$> sourceLastUpdatedTimestampFormat,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateId" Prelude.<$> templateId]))}
instance JSON.ToJSON ObjectType where
  toJSON ObjectType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description,
               "DomainName" JSON..= domainName,
               "ObjectTypeName" JSON..= objectTypeName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowProfileCreation" Prelude.<$> allowProfileCreation,
                  (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                  (JSON..=) "ExpirationDays" Prelude.<$> expirationDays,
                  (JSON..=) "Fields" Prelude.<$> fields,
                  (JSON..=) "Keys" Prelude.<$> keys,
                  (JSON..=) "SourceLastUpdatedTimestampFormat"
                    Prelude.<$> sourceLastUpdatedTimestampFormat,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateId" Prelude.<$> templateId])))
instance Property "AllowProfileCreation" ObjectType where
  type PropertyType "AllowProfileCreation" ObjectType = Value Prelude.Bool
  set newValue ObjectType {..}
    = ObjectType {allowProfileCreation = Prelude.pure newValue, ..}
instance Property "Description" ObjectType where
  type PropertyType "Description" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {description = newValue, ..}
instance Property "DomainName" ObjectType where
  type PropertyType "DomainName" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {domainName = newValue, ..}
instance Property "EncryptionKey" ObjectType where
  type PropertyType "EncryptionKey" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {encryptionKey = Prelude.pure newValue, ..}
instance Property "ExpirationDays" ObjectType where
  type PropertyType "ExpirationDays" ObjectType = Value Prelude.Integer
  set newValue ObjectType {..}
    = ObjectType {expirationDays = Prelude.pure newValue, ..}
instance Property "Fields" ObjectType where
  type PropertyType "Fields" ObjectType = [FieldMapProperty]
  set newValue ObjectType {..}
    = ObjectType {fields = Prelude.pure newValue, ..}
instance Property "Keys" ObjectType where
  type PropertyType "Keys" ObjectType = [KeyMapProperty]
  set newValue ObjectType {..}
    = ObjectType {keys = Prelude.pure newValue, ..}
instance Property "ObjectTypeName" ObjectType where
  type PropertyType "ObjectTypeName" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {objectTypeName = newValue, ..}
instance Property "SourceLastUpdatedTimestampFormat" ObjectType where
  type PropertyType "SourceLastUpdatedTimestampFormat" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType
        {sourceLastUpdatedTimestampFormat = Prelude.pure newValue, ..}
instance Property "Tags" ObjectType where
  type PropertyType "Tags" ObjectType = [Tag]
  set newValue ObjectType {..}
    = ObjectType {tags = Prelude.pure newValue, ..}
instance Property "TemplateId" ObjectType where
  type PropertyType "TemplateId" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {templateId = Prelude.pure newValue, ..}