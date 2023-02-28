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
  = ObjectType {allowProfileCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                domainName :: (Value Prelude.Text),
                encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
                expirationDays :: (Prelude.Maybe (Value Prelude.Integer)),
                fields :: (Prelude.Maybe [FieldMapProperty]),
                keys :: (Prelude.Maybe [KeyMapProperty]),
                objectTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag]),
                templateId :: (Prelude.Maybe (Value Prelude.Text))}
mkObjectType :: Value Prelude.Text -> ObjectType
mkObjectType domainName
  = ObjectType
      {domainName = domainName, allowProfileCreation = Prelude.Nothing,
       description = Prelude.Nothing, encryptionKey = Prelude.Nothing,
       expirationDays = Prelude.Nothing, fields = Prelude.Nothing,
       keys = Prelude.Nothing, objectTypeName = Prelude.Nothing,
       tags = Prelude.Nothing, templateId = Prelude.Nothing}
instance ToResourceProperties ObjectType where
  toResourceProperties ObjectType {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::ObjectType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowProfileCreation" Prelude.<$> allowProfileCreation,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                               (JSON..=) "ExpirationDays" Prelude.<$> expirationDays,
                               (JSON..=) "Fields" Prelude.<$> fields,
                               (JSON..=) "Keys" Prelude.<$> keys,
                               (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateId" Prelude.<$> templateId]))}
instance JSON.ToJSON ObjectType where
  toJSON ObjectType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "AllowProfileCreation" Prelude.<$> allowProfileCreation,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                  (JSON..=) "ExpirationDays" Prelude.<$> expirationDays,
                  (JSON..=) "Fields" Prelude.<$> fields,
                  (JSON..=) "Keys" Prelude.<$> keys,
                  (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateId" Prelude.<$> templateId])))
instance Property "AllowProfileCreation" ObjectType where
  type PropertyType "AllowProfileCreation" ObjectType = Value Prelude.Bool
  set newValue ObjectType {..}
    = ObjectType {allowProfileCreation = Prelude.pure newValue, ..}
instance Property "Description" ObjectType where
  type PropertyType "Description" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {description = Prelude.pure newValue, ..}
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
    = ObjectType {objectTypeName = Prelude.pure newValue, ..}
instance Property "Tags" ObjectType where
  type PropertyType "Tags" ObjectType = [Tag]
  set newValue ObjectType {..}
    = ObjectType {tags = Prelude.pure newValue, ..}
instance Property "TemplateId" ObjectType where
  type PropertyType "TemplateId" ObjectType = Value Prelude.Text
  set newValue ObjectType {..}
    = ObjectType {templateId = Prelude.pure newValue, ..}