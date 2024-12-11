module Stratosphere.EntityResolution.IdNamespace.IdNamespaceInputSourceProperty (
        IdNamespaceInputSourceProperty(..),
        mkIdNamespaceInputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdNamespaceInputSourceProperty
  = IdNamespaceInputSourceProperty {inputSourceARN :: (Value Prelude.Text),
                                    schemaName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespaceInputSourceProperty ::
  Value Prelude.Text -> IdNamespaceInputSourceProperty
mkIdNamespaceInputSourceProperty inputSourceARN
  = IdNamespaceInputSourceProperty
      {inputSourceARN = inputSourceARN, schemaName = Prelude.Nothing}
instance ToResourceProperties IdNamespaceInputSourceProperty where
  toResourceProperties IdNamespaceInputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdNamespace.IdNamespaceInputSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputSourceARN" JSON..= inputSourceARN]
                           (Prelude.catMaybes
                              [(JSON..=) "SchemaName" Prelude.<$> schemaName]))}
instance JSON.ToJSON IdNamespaceInputSourceProperty where
  toJSON IdNamespaceInputSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputSourceARN" JSON..= inputSourceARN]
              (Prelude.catMaybes
                 [(JSON..=) "SchemaName" Prelude.<$> schemaName])))
instance Property "InputSourceARN" IdNamespaceInputSourceProperty where
  type PropertyType "InputSourceARN" IdNamespaceInputSourceProperty = Value Prelude.Text
  set newValue IdNamespaceInputSourceProperty {..}
    = IdNamespaceInputSourceProperty {inputSourceARN = newValue, ..}
instance Property "SchemaName" IdNamespaceInputSourceProperty where
  type PropertyType "SchemaName" IdNamespaceInputSourceProperty = Value Prelude.Text
  set newValue IdNamespaceInputSourceProperty {..}
    = IdNamespaceInputSourceProperty
        {schemaName = Prelude.pure newValue, ..}