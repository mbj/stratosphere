module Stratosphere.Cognito.ManagedLoginBranding.AssetTypeProperty (
        AssetTypeProperty(..), mkAssetTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetTypeProperty
  = AssetTypeProperty {bytes :: (Prelude.Maybe (Value Prelude.Text)),
                       category :: (Value Prelude.Text),
                       colorMode :: (Value Prelude.Text),
                       extension :: (Value Prelude.Text),
                       resourceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AssetTypeProperty
mkAssetTypeProperty category colorMode extension
  = AssetTypeProperty
      {category = category, colorMode = colorMode, extension = extension,
       bytes = Prelude.Nothing, resourceId = Prelude.Nothing}
instance ToResourceProperties AssetTypeProperty where
  toResourceProperties AssetTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::ManagedLoginBranding.AssetType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Category" JSON..= category, "ColorMode" JSON..= colorMode,
                            "Extension" JSON..= extension]
                           (Prelude.catMaybes
                              [(JSON..=) "Bytes" Prelude.<$> bytes,
                               (JSON..=) "ResourceId" Prelude.<$> resourceId]))}
instance JSON.ToJSON AssetTypeProperty where
  toJSON AssetTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Category" JSON..= category, "ColorMode" JSON..= colorMode,
               "Extension" JSON..= extension]
              (Prelude.catMaybes
                 [(JSON..=) "Bytes" Prelude.<$> bytes,
                  (JSON..=) "ResourceId" Prelude.<$> resourceId])))
instance Property "Bytes" AssetTypeProperty where
  type PropertyType "Bytes" AssetTypeProperty = Value Prelude.Text
  set newValue AssetTypeProperty {..}
    = AssetTypeProperty {bytes = Prelude.pure newValue, ..}
instance Property "Category" AssetTypeProperty where
  type PropertyType "Category" AssetTypeProperty = Value Prelude.Text
  set newValue AssetTypeProperty {..}
    = AssetTypeProperty {category = newValue, ..}
instance Property "ColorMode" AssetTypeProperty where
  type PropertyType "ColorMode" AssetTypeProperty = Value Prelude.Text
  set newValue AssetTypeProperty {..}
    = AssetTypeProperty {colorMode = newValue, ..}
instance Property "Extension" AssetTypeProperty where
  type PropertyType "Extension" AssetTypeProperty = Value Prelude.Text
  set newValue AssetTypeProperty {..}
    = AssetTypeProperty {extension = newValue, ..}
instance Property "ResourceId" AssetTypeProperty where
  type PropertyType "ResourceId" AssetTypeProperty = Value Prelude.Text
  set newValue AssetTypeProperty {..}
    = AssetTypeProperty {resourceId = Prelude.pure newValue, ..}