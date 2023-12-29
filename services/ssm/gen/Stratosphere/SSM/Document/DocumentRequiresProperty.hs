module Stratosphere.SSM.Document.DocumentRequiresProperty (
        DocumentRequiresProperty(..), mkDocumentRequiresProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentRequiresProperty
  = DocumentRequiresProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                              version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentRequiresProperty :: DocumentRequiresProperty
mkDocumentRequiresProperty
  = DocumentRequiresProperty
      {name = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties DocumentRequiresProperty where
  toResourceProperties DocumentRequiresProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::Document.DocumentRequires",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON DocumentRequiresProperty where
  toJSON DocumentRequiresProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" DocumentRequiresProperty where
  type PropertyType "Name" DocumentRequiresProperty = Value Prelude.Text
  set newValue DocumentRequiresProperty {..}
    = DocumentRequiresProperty {name = Prelude.pure newValue, ..}
instance Property "Version" DocumentRequiresProperty where
  type PropertyType "Version" DocumentRequiresProperty = Value Prelude.Text
  set newValue DocumentRequiresProperty {..}
    = DocumentRequiresProperty {version = Prelude.pure newValue, ..}