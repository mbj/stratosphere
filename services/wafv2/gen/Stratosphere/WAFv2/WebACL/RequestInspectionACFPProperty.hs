module Stratosphere.WAFv2.WebACL.RequestInspectionACFPProperty (
        module Exports, RequestInspectionACFPProperty(..),
        mkRequestInspectionACFPProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RequestInspectionACFPProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html>
    RequestInspectionACFPProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-addressfields>
                                   addressFields :: (Prelude.Maybe [FieldIdentifierProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-emailfield>
                                   emailField :: (Prelude.Maybe FieldIdentifierProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-passwordfield>
                                   passwordField :: (Prelude.Maybe FieldIdentifierProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-payloadtype>
                                   payloadType :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-phonenumberfields>
                                   phoneNumberFields :: (Prelude.Maybe [FieldIdentifierProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-requestinspectionacfp.html#cfn-wafv2-webacl-requestinspectionacfp-usernamefield>
                                   usernameField :: (Prelude.Maybe FieldIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRequestInspectionACFPProperty ::
  Value Prelude.Text -> RequestInspectionACFPProperty
mkRequestInspectionACFPProperty payloadType
  = RequestInspectionACFPProperty
      {haddock_workaround_ = (), payloadType = payloadType,
       addressFields = Prelude.Nothing, emailField = Prelude.Nothing,
       passwordField = Prelude.Nothing,
       phoneNumberFields = Prelude.Nothing,
       usernameField = Prelude.Nothing}
instance ToResourceProperties RequestInspectionACFPProperty where
  toResourceProperties RequestInspectionACFPProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RequestInspectionACFP",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PayloadType" JSON..= payloadType]
                           (Prelude.catMaybes
                              [(JSON..=) "AddressFields" Prelude.<$> addressFields,
                               (JSON..=) "EmailField" Prelude.<$> emailField,
                               (JSON..=) "PasswordField" Prelude.<$> passwordField,
                               (JSON..=) "PhoneNumberFields" Prelude.<$> phoneNumberFields,
                               (JSON..=) "UsernameField" Prelude.<$> usernameField]))}
instance JSON.ToJSON RequestInspectionACFPProperty where
  toJSON RequestInspectionACFPProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PayloadType" JSON..= payloadType]
              (Prelude.catMaybes
                 [(JSON..=) "AddressFields" Prelude.<$> addressFields,
                  (JSON..=) "EmailField" Prelude.<$> emailField,
                  (JSON..=) "PasswordField" Prelude.<$> passwordField,
                  (JSON..=) "PhoneNumberFields" Prelude.<$> phoneNumberFields,
                  (JSON..=) "UsernameField" Prelude.<$> usernameField])))
instance Property "AddressFields" RequestInspectionACFPProperty where
  type PropertyType "AddressFields" RequestInspectionACFPProperty = [FieldIdentifierProperty]
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {addressFields = Prelude.pure newValue, ..}
instance Property "EmailField" RequestInspectionACFPProperty where
  type PropertyType "EmailField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {emailField = Prelude.pure newValue, ..}
instance Property "PasswordField" RequestInspectionACFPProperty where
  type PropertyType "PasswordField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {passwordField = Prelude.pure newValue, ..}
instance Property "PayloadType" RequestInspectionACFPProperty where
  type PropertyType "PayloadType" RequestInspectionACFPProperty = Value Prelude.Text
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty {payloadType = newValue, ..}
instance Property "PhoneNumberFields" RequestInspectionACFPProperty where
  type PropertyType "PhoneNumberFields" RequestInspectionACFPProperty = [FieldIdentifierProperty]
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {phoneNumberFields = Prelude.pure newValue, ..}
instance Property "UsernameField" RequestInspectionACFPProperty where
  type PropertyType "UsernameField" RequestInspectionACFPProperty = FieldIdentifierProperty
  set newValue RequestInspectionACFPProperty {..}
    = RequestInspectionACFPProperty
        {usernameField = Prelude.pure newValue, ..}