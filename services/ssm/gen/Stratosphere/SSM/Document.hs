module Stratosphere.SSM.Document (
        module Exports, Document(..), mkDocument
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.Document.AttachmentsSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.Document.DocumentRequiresProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Document
  = Document {attachments :: (Prelude.Maybe [AttachmentsSourceProperty]),
              content :: JSON.Object,
              documentFormat :: (Prelude.Maybe (Value Prelude.Text)),
              documentType :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              requires :: (Prelude.Maybe [DocumentRequiresProperty]),
              tags :: (Prelude.Maybe [Tag]),
              targetType :: (Prelude.Maybe (Value Prelude.Text)),
              updateMethod :: (Prelude.Maybe (Value Prelude.Text)),
              versionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocument :: JSON.Object -> Document
mkDocument content
  = Document
      {content = content, attachments = Prelude.Nothing,
       documentFormat = Prelude.Nothing, documentType = Prelude.Nothing,
       name = Prelude.Nothing, requires = Prelude.Nothing,
       tags = Prelude.Nothing, targetType = Prelude.Nothing,
       updateMethod = Prelude.Nothing, versionName = Prelude.Nothing}
instance ToResourceProperties Document where
  toResourceProperties Document {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Document", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content]
                           (Prelude.catMaybes
                              [(JSON..=) "Attachments" Prelude.<$> attachments,
                               (JSON..=) "DocumentFormat" Prelude.<$> documentFormat,
                               (JSON..=) "DocumentType" Prelude.<$> documentType,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Requires" Prelude.<$> requires,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TargetType" Prelude.<$> targetType,
                               (JSON..=) "UpdateMethod" Prelude.<$> updateMethod,
                               (JSON..=) "VersionName" Prelude.<$> versionName]))}
instance JSON.ToJSON Document where
  toJSON Document {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content]
              (Prelude.catMaybes
                 [(JSON..=) "Attachments" Prelude.<$> attachments,
                  (JSON..=) "DocumentFormat" Prelude.<$> documentFormat,
                  (JSON..=) "DocumentType" Prelude.<$> documentType,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Requires" Prelude.<$> requires,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TargetType" Prelude.<$> targetType,
                  (JSON..=) "UpdateMethod" Prelude.<$> updateMethod,
                  (JSON..=) "VersionName" Prelude.<$> versionName])))
instance Property "Attachments" Document where
  type PropertyType "Attachments" Document = [AttachmentsSourceProperty]
  set newValue Document {..}
    = Document {attachments = Prelude.pure newValue, ..}
instance Property "Content" Document where
  type PropertyType "Content" Document = JSON.Object
  set newValue Document {..} = Document {content = newValue, ..}
instance Property "DocumentFormat" Document where
  type PropertyType "DocumentFormat" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {documentFormat = Prelude.pure newValue, ..}
instance Property "DocumentType" Document where
  type PropertyType "DocumentType" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {documentType = Prelude.pure newValue, ..}
instance Property "Name" Document where
  type PropertyType "Name" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {name = Prelude.pure newValue, ..}
instance Property "Requires" Document where
  type PropertyType "Requires" Document = [DocumentRequiresProperty]
  set newValue Document {..}
    = Document {requires = Prelude.pure newValue, ..}
instance Property "Tags" Document where
  type PropertyType "Tags" Document = [Tag]
  set newValue Document {..}
    = Document {tags = Prelude.pure newValue, ..}
instance Property "TargetType" Document where
  type PropertyType "TargetType" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {targetType = Prelude.pure newValue, ..}
instance Property "UpdateMethod" Document where
  type PropertyType "UpdateMethod" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {updateMethod = Prelude.pure newValue, ..}
instance Property "VersionName" Document where
  type PropertyType "VersionName" Document = Value Prelude.Text
  set newValue Document {..}
    = Document {versionName = Prelude.pure newValue, ..}