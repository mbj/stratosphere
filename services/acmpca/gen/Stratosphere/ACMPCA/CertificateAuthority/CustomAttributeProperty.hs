module Stratosphere.ACMPCA.CertificateAuthority.CustomAttributeProperty (
        CustomAttributeProperty(..), mkCustomAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-customattribute.html>
    CustomAttributeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-customattribute.html#cfn-acmpca-certificateauthority-customattribute-objectidentifier>
                             objectIdentifier :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-customattribute.html#cfn-acmpca-certificateauthority-customattribute-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomAttributeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomAttributeProperty
mkCustomAttributeProperty objectIdentifier value
  = CustomAttributeProperty
      {haddock_workaround_ = (), objectIdentifier = objectIdentifier,
       value = value}
instance ToResourceProperties CustomAttributeProperty where
  toResourceProperties CustomAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.CustomAttribute",
         supportsTags = Prelude.False,
         properties = ["ObjectIdentifier" JSON..= objectIdentifier,
                       "Value" JSON..= value]}
instance JSON.ToJSON CustomAttributeProperty where
  toJSON CustomAttributeProperty {..}
    = JSON.object
        ["ObjectIdentifier" JSON..= objectIdentifier,
         "Value" JSON..= value]
instance Property "ObjectIdentifier" CustomAttributeProperty where
  type PropertyType "ObjectIdentifier" CustomAttributeProperty = Value Prelude.Text
  set newValue CustomAttributeProperty {..}
    = CustomAttributeProperty {objectIdentifier = newValue, ..}
instance Property "Value" CustomAttributeProperty where
  type PropertyType "Value" CustomAttributeProperty = Value Prelude.Text
  set newValue CustomAttributeProperty {..}
    = CustomAttributeProperty {value = newValue, ..}