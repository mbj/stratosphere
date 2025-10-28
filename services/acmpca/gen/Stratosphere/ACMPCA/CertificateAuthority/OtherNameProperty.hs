module Stratosphere.ACMPCA.CertificateAuthority.OtherNameProperty (
        OtherNameProperty(..), mkOtherNameProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OtherNameProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-othername.html>
    OtherNameProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-othername.html#cfn-acmpca-certificateauthority-othername-typeid>
                       typeId :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificateauthority-othername.html#cfn-acmpca-certificateauthority-othername-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOtherNameProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OtherNameProperty
mkOtherNameProperty typeId value
  = OtherNameProperty {typeId = typeId, value = value}
instance ToResourceProperties OtherNameProperty where
  toResourceProperties OtherNameProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::CertificateAuthority.OtherName",
         supportsTags = Prelude.False,
         properties = ["TypeId" JSON..= typeId, "Value" JSON..= value]}
instance JSON.ToJSON OtherNameProperty where
  toJSON OtherNameProperty {..}
    = JSON.object ["TypeId" JSON..= typeId, "Value" JSON..= value]
instance Property "TypeId" OtherNameProperty where
  type PropertyType "TypeId" OtherNameProperty = Value Prelude.Text
  set newValue OtherNameProperty {..}
    = OtherNameProperty {typeId = newValue, ..}
instance Property "Value" OtherNameProperty where
  type PropertyType "Value" OtherNameProperty = Value Prelude.Text
  set newValue OtherNameProperty {..}
    = OtherNameProperty {value = newValue, ..}