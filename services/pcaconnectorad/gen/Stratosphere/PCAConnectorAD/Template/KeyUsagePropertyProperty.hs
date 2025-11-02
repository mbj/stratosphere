module Stratosphere.PCAConnectorAD.Template.KeyUsagePropertyProperty (
        module Exports, KeyUsagePropertyProperty(..),
        mkKeyUsagePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.KeyUsagePropertyFlagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsagePropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusageproperty.html>
    KeyUsagePropertyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusageproperty.html#cfn-pcaconnectorad-template-keyusageproperty-propertyflags>
                              propertyFlags :: (Prelude.Maybe KeyUsagePropertyFlagsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusageproperty.html#cfn-pcaconnectorad-template-keyusageproperty-propertytype>
                              propertyType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyUsagePropertyProperty :: KeyUsagePropertyProperty
mkKeyUsagePropertyProperty
  = KeyUsagePropertyProperty
      {haddock_workaround_ = (), propertyFlags = Prelude.Nothing,
       propertyType = Prelude.Nothing}
instance ToResourceProperties KeyUsagePropertyProperty where
  toResourceProperties KeyUsagePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.KeyUsageProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PropertyFlags" Prelude.<$> propertyFlags,
                            (JSON..=) "PropertyType" Prelude.<$> propertyType])}
instance JSON.ToJSON KeyUsagePropertyProperty where
  toJSON KeyUsagePropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PropertyFlags" Prelude.<$> propertyFlags,
               (JSON..=) "PropertyType" Prelude.<$> propertyType]))
instance Property "PropertyFlags" KeyUsagePropertyProperty where
  type PropertyType "PropertyFlags" KeyUsagePropertyProperty = KeyUsagePropertyFlagsProperty
  set newValue KeyUsagePropertyProperty {..}
    = KeyUsagePropertyProperty
        {propertyFlags = Prelude.pure newValue, ..}
instance Property "PropertyType" KeyUsagePropertyProperty where
  type PropertyType "PropertyType" KeyUsagePropertyProperty = Value Prelude.Text
  set newValue KeyUsagePropertyProperty {..}
    = KeyUsagePropertyProperty
        {propertyType = Prelude.pure newValue, ..}