module Stratosphere.WAFv2.WebACL.XssMatchStatementProperty (
        module Exports, XssMatchStatementProperty(..),
        mkXssMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldToMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
data XssMatchStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html>
    XssMatchStatementProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-fieldtomatch>
                               fieldToMatch :: FieldToMatchProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-texttransformations>
                               textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkXssMatchStatementProperty ::
  FieldToMatchProperty
  -> [TextTransformationProperty] -> XssMatchStatementProperty
mkXssMatchStatementProperty fieldToMatch textTransformations
  = XssMatchStatementProperty
      {haddock_workaround_ = (), fieldToMatch = fieldToMatch,
       textTransformations = textTransformations}
instance ToResourceProperties XssMatchStatementProperty where
  toResourceProperties XssMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.XssMatchStatement",
         supportsTags = Prelude.False,
         properties = ["FieldToMatch" JSON..= fieldToMatch,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON XssMatchStatementProperty where
  toJSON XssMatchStatementProperty {..}
    = JSON.object
        ["FieldToMatch" JSON..= fieldToMatch,
         "TextTransformations" JSON..= textTransformations]
instance Property "FieldToMatch" XssMatchStatementProperty where
  type PropertyType "FieldToMatch" XssMatchStatementProperty = FieldToMatchProperty
  set newValue XssMatchStatementProperty {..}
    = XssMatchStatementProperty {fieldToMatch = newValue, ..}
instance Property "TextTransformations" XssMatchStatementProperty where
  type PropertyType "TextTransformations" XssMatchStatementProperty = [TextTransformationProperty]
  set newValue XssMatchStatementProperty {..}
    = XssMatchStatementProperty {textTransformations = newValue, ..}