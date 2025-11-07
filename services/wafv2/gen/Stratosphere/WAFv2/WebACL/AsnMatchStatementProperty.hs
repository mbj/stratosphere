module Stratosphere.WAFv2.WebACL.AsnMatchStatementProperty (
        module Exports, AsnMatchStatementProperty(..),
        mkAsnMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ForwardedIPConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AsnMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html>
    AsnMatchStatementProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html#cfn-wafv2-webacl-asnmatchstatement-asnlist>
                               asnList :: (Prelude.Maybe (ValueList Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-asnmatchstatement.html#cfn-wafv2-webacl-asnmatchstatement-forwardedipconfig>
                               forwardedIPConfig :: (Prelude.Maybe ForwardedIPConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsnMatchStatementProperty :: AsnMatchStatementProperty
mkAsnMatchStatementProperty
  = AsnMatchStatementProperty
      {haddock_workaround_ = (), asnList = Prelude.Nothing,
       forwardedIPConfig = Prelude.Nothing}
instance ToResourceProperties AsnMatchStatementProperty where
  toResourceProperties AsnMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AsnMatchStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AsnList" Prelude.<$> asnList,
                            (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig])}
instance JSON.ToJSON AsnMatchStatementProperty where
  toJSON AsnMatchStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AsnList" Prelude.<$> asnList,
               (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig]))
instance Property "AsnList" AsnMatchStatementProperty where
  type PropertyType "AsnList" AsnMatchStatementProperty = ValueList Prelude.Integer
  set newValue AsnMatchStatementProperty {..}
    = AsnMatchStatementProperty {asnList = Prelude.pure newValue, ..}
instance Property "ForwardedIPConfig" AsnMatchStatementProperty where
  type PropertyType "ForwardedIPConfig" AsnMatchStatementProperty = ForwardedIPConfigurationProperty
  set newValue AsnMatchStatementProperty {..}
    = AsnMatchStatementProperty
        {forwardedIPConfig = Prelude.pure newValue, ..}