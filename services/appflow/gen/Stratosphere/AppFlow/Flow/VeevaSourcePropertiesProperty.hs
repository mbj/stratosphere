module Stratosphere.AppFlow.Flow.VeevaSourcePropertiesProperty (
        VeevaSourcePropertiesProperty(..), mkVeevaSourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VeevaSourcePropertiesProperty
  = VeevaSourcePropertiesProperty {documentType :: (Prelude.Maybe (Value Prelude.Text)),
                                   includeAllVersions :: (Prelude.Maybe (Value Prelude.Bool)),
                                   includeRenditions :: (Prelude.Maybe (Value Prelude.Bool)),
                                   includeSourceFiles :: (Prelude.Maybe (Value Prelude.Bool)),
                                   object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVeevaSourcePropertiesProperty ::
  Value Prelude.Text -> VeevaSourcePropertiesProperty
mkVeevaSourcePropertiesProperty object
  = VeevaSourcePropertiesProperty
      {object = object, documentType = Prelude.Nothing,
       includeAllVersions = Prelude.Nothing,
       includeRenditions = Prelude.Nothing,
       includeSourceFiles = Prelude.Nothing}
instance ToResourceProperties VeevaSourcePropertiesProperty where
  toResourceProperties VeevaSourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.VeevaSourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentType" Prelude.<$> documentType,
                               (JSON..=) "IncludeAllVersions" Prelude.<$> includeAllVersions,
                               (JSON..=) "IncludeRenditions" Prelude.<$> includeRenditions,
                               (JSON..=) "IncludeSourceFiles" Prelude.<$> includeSourceFiles]))}
instance JSON.ToJSON VeevaSourcePropertiesProperty where
  toJSON VeevaSourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentType" Prelude.<$> documentType,
                  (JSON..=) "IncludeAllVersions" Prelude.<$> includeAllVersions,
                  (JSON..=) "IncludeRenditions" Prelude.<$> includeRenditions,
                  (JSON..=) "IncludeSourceFiles" Prelude.<$> includeSourceFiles])))
instance Property "DocumentType" VeevaSourcePropertiesProperty where
  type PropertyType "DocumentType" VeevaSourcePropertiesProperty = Value Prelude.Text
  set newValue VeevaSourcePropertiesProperty {..}
    = VeevaSourcePropertiesProperty
        {documentType = Prelude.pure newValue, ..}
instance Property "IncludeAllVersions" VeevaSourcePropertiesProperty where
  type PropertyType "IncludeAllVersions" VeevaSourcePropertiesProperty = Value Prelude.Bool
  set newValue VeevaSourcePropertiesProperty {..}
    = VeevaSourcePropertiesProperty
        {includeAllVersions = Prelude.pure newValue, ..}
instance Property "IncludeRenditions" VeevaSourcePropertiesProperty where
  type PropertyType "IncludeRenditions" VeevaSourcePropertiesProperty = Value Prelude.Bool
  set newValue VeevaSourcePropertiesProperty {..}
    = VeevaSourcePropertiesProperty
        {includeRenditions = Prelude.pure newValue, ..}
instance Property "IncludeSourceFiles" VeevaSourcePropertiesProperty where
  type PropertyType "IncludeSourceFiles" VeevaSourcePropertiesProperty = Value Prelude.Bool
  set newValue VeevaSourcePropertiesProperty {..}
    = VeevaSourcePropertiesProperty
        {includeSourceFiles = Prelude.pure newValue, ..}
instance Property "Object" VeevaSourcePropertiesProperty where
  type PropertyType "Object" VeevaSourcePropertiesProperty = Value Prelude.Text
  set newValue VeevaSourcePropertiesProperty {..}
    = VeevaSourcePropertiesProperty {object = newValue, ..}