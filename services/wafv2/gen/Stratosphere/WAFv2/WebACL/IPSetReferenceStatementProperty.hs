module Stratosphere.WAFv2.WebACL.IPSetReferenceStatementProperty (
        module Exports, IPSetReferenceStatementProperty(..),
        mkIPSetReferenceStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.IPSetForwardedIPConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetReferenceStatementProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html>
    IPSetReferenceStatementProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html#cfn-wafv2-webacl-ipsetreferencestatement-arn>
                                     arn :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ipsetreferencestatement.html#cfn-wafv2-webacl-ipsetreferencestatement-ipsetforwardedipconfig>
                                     iPSetForwardedIPConfig :: (Prelude.Maybe IPSetForwardedIPConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSetReferenceStatementProperty ::
  Value Prelude.Text -> IPSetReferenceStatementProperty
mkIPSetReferenceStatementProperty arn
  = IPSetReferenceStatementProperty
      {arn = arn, iPSetForwardedIPConfig = Prelude.Nothing}
instance ToResourceProperties IPSetReferenceStatementProperty where
  toResourceProperties IPSetReferenceStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.IPSetReferenceStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn]
                           (Prelude.catMaybes
                              [(JSON..=) "IPSetForwardedIPConfig"
                                 Prelude.<$> iPSetForwardedIPConfig]))}
instance JSON.ToJSON IPSetReferenceStatementProperty where
  toJSON IPSetReferenceStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn]
              (Prelude.catMaybes
                 [(JSON..=) "IPSetForwardedIPConfig"
                    Prelude.<$> iPSetForwardedIPConfig])))
instance Property "Arn" IPSetReferenceStatementProperty where
  type PropertyType "Arn" IPSetReferenceStatementProperty = Value Prelude.Text
  set newValue IPSetReferenceStatementProperty {..}
    = IPSetReferenceStatementProperty {arn = newValue, ..}
instance Property "IPSetForwardedIPConfig" IPSetReferenceStatementProperty where
  type PropertyType "IPSetForwardedIPConfig" IPSetReferenceStatementProperty = IPSetForwardedIPConfigurationProperty
  set newValue IPSetReferenceStatementProperty {..}
    = IPSetReferenceStatementProperty
        {iPSetForwardedIPConfig = Prelude.pure newValue, ..}