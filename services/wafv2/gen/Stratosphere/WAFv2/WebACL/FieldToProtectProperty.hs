module Stratosphere.WAFv2.WebACL.FieldToProtectProperty (
        FieldToProtectProperty(..), mkFieldToProtectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldToProtectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtoprotect.html>
    FieldToProtectProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtoprotect.html#cfn-wafv2-webacl-fieldtoprotect-fieldkeys>
                            fieldKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldtoprotect.html#cfn-wafv2-webacl-fieldtoprotect-fieldtype>
                            fieldType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldToProtectProperty ::
  Value Prelude.Text -> FieldToProtectProperty
mkFieldToProtectProperty fieldType
  = FieldToProtectProperty
      {haddock_workaround_ = (), fieldType = fieldType,
       fieldKeys = Prelude.Nothing}
instance ToResourceProperties FieldToProtectProperty where
  toResourceProperties FieldToProtectProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.FieldToProtect",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldType" JSON..= fieldType]
                           (Prelude.catMaybes [(JSON..=) "FieldKeys" Prelude.<$> fieldKeys]))}
instance JSON.ToJSON FieldToProtectProperty where
  toJSON FieldToProtectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldType" JSON..= fieldType]
              (Prelude.catMaybes [(JSON..=) "FieldKeys" Prelude.<$> fieldKeys])))
instance Property "FieldKeys" FieldToProtectProperty where
  type PropertyType "FieldKeys" FieldToProtectProperty = ValueList Prelude.Text
  set newValue FieldToProtectProperty {..}
    = FieldToProtectProperty {fieldKeys = Prelude.pure newValue, ..}
instance Property "FieldType" FieldToProtectProperty where
  type PropertyType "FieldType" FieldToProtectProperty = Value Prelude.Text
  set newValue FieldToProtectProperty {..}
    = FieldToProtectProperty {fieldType = newValue, ..}