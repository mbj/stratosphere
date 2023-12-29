module Stratosphere.Config.ConformancePack.TemplateSSMDocumentDetailsProperty (
        TemplateSSMDocumentDetailsProperty(..),
        mkTemplateSSMDocumentDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateSSMDocumentDetailsProperty
  = TemplateSSMDocumentDetailsProperty {documentName :: (Prelude.Maybe (Value Prelude.Text)),
                                        documentVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateSSMDocumentDetailsProperty ::
  TemplateSSMDocumentDetailsProperty
mkTemplateSSMDocumentDetailsProperty
  = TemplateSSMDocumentDetailsProperty
      {documentName = Prelude.Nothing, documentVersion = Prelude.Nothing}
instance ToResourceProperties TemplateSSMDocumentDetailsProperty where
  toResourceProperties TemplateSSMDocumentDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConformancePack.TemplateSSMDocumentDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocumentName" Prelude.<$> documentName,
                            (JSON..=) "DocumentVersion" Prelude.<$> documentVersion])}
instance JSON.ToJSON TemplateSSMDocumentDetailsProperty where
  toJSON TemplateSSMDocumentDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocumentName" Prelude.<$> documentName,
               (JSON..=) "DocumentVersion" Prelude.<$> documentVersion]))
instance Property "DocumentName" TemplateSSMDocumentDetailsProperty where
  type PropertyType "DocumentName" TemplateSSMDocumentDetailsProperty = Value Prelude.Text
  set newValue TemplateSSMDocumentDetailsProperty {..}
    = TemplateSSMDocumentDetailsProperty
        {documentName = Prelude.pure newValue, ..}
instance Property "DocumentVersion" TemplateSSMDocumentDetailsProperty where
  type PropertyType "DocumentVersion" TemplateSSMDocumentDetailsProperty = Value Prelude.Text
  set newValue TemplateSSMDocumentDetailsProperty {..}
    = TemplateSSMDocumentDetailsProperty
        {documentVersion = Prelude.pure newValue, ..}