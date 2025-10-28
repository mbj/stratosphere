module Stratosphere.Cognito.ManagedLoginBranding.AssetTypeProperty (
        AssetTypeProperty(..), mkAssetTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html>
    AssetTypeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html#cfn-cognito-managedloginbranding-assettype-bytes>
                       bytes :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html#cfn-cognito-managedloginbranding-assettype-category>
                       category :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html#cfn-cognito-managedloginbranding-assettype-colormode>
                       colorMode :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html#cfn-cognito-managedloginbranding-assettype-extension>
                       extension :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-managedloginbranding-assettype.html#cfn-cognito-managedloginbranding-assettype-resourceid>
                       resourceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> AssetTypeProperty
mkAssetTypeProperty category colorMode extension
  = AssetTypeProperty
      {haddock_workaround_ = (), category = category,
       colorMode = colorMode, extension = extension,
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