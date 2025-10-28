module Stratosphere.WAFv2.WebACL.RequestInspectionProperty (
        module Exports, RequestInspectionProperty(..),
        mkRequestInspectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestInspectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspection.html>
    RequestInspectionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspection.html#cfn-wafv2-webacl-requestinspection-passwordfield>
                               passwordField :: FieldIdentifierProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspection.html#cfn-wafv2-webacl-requestinspection-payloadtype>
                               payloadType :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspection.html#cfn-wafv2-webacl-requestinspection-usernamefield>
                               usernameField :: FieldIdentifierProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestInspectionProperty ::
  FieldIdentifierProperty
  -> Value Prelude.Text
     -> FieldIdentifierProperty -> RequestInspectionProperty
mkRequestInspectionProperty passwordField payloadType usernameField
  = RequestInspectionProperty
      {haddock_workaround_ = (), passwordField = passwordField,
       payloadType = payloadType, usernameField = usernameField}
instance ToResourceProperties RequestInspectionProperty where
  toResourceProperties RequestInspectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RequestInspection",
         supportsTags = Prelude.False,
         properties = ["PasswordField" JSON..= passwordField,
                       "PayloadType" JSON..= payloadType,
                       "UsernameField" JSON..= usernameField]}
instance JSON.ToJSON RequestInspectionProperty where
  toJSON RequestInspectionProperty {..}
    = JSON.object
        ["PasswordField" JSON..= passwordField,
         "PayloadType" JSON..= payloadType,
         "UsernameField" JSON..= usernameField]
instance Property "PasswordField" RequestInspectionProperty where
  type PropertyType "PasswordField" RequestInspectionProperty = FieldIdentifierProperty
  set newValue RequestInspectionProperty {..}
    = RequestInspectionProperty {passwordField = newValue, ..}
instance Property "PayloadType" RequestInspectionProperty where
  type PropertyType "PayloadType" RequestInspectionProperty = Value Prelude.Text
  set newValue RequestInspectionProperty {..}
    = RequestInspectionProperty {payloadType = newValue, ..}
instance Property "UsernameField" RequestInspectionProperty where
  type PropertyType "UsernameField" RequestInspectionProperty = FieldIdentifierProperty
  set newValue RequestInspectionProperty {..}
    = RequestInspectionProperty {usernameField = newValue, ..}