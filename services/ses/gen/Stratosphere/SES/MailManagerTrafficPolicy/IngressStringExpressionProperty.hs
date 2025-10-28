module Stratosphere.SES.MailManagerTrafficPolicy.IngressStringExpressionProperty (
        module Exports, IngressStringExpressionProperty(..),
        mkIngressStringExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressStringToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressStringExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringexpression.html>
    IngressStringExpressionProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringexpression.html#cfn-ses-mailmanagertrafficpolicy-ingressstringexpression-evaluate>
                                     evaluate :: IngressStringToEvaluateProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringexpression.html#cfn-ses-mailmanagertrafficpolicy-ingressstringexpression-operator>
                                     operator :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressstringexpression.html#cfn-ses-mailmanagertrafficpolicy-ingressstringexpression-values>
                                     values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressStringExpressionProperty ::
  IngressStringToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> IngressStringExpressionProperty
mkIngressStringExpressionProperty evaluate operator values
  = IngressStringExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, values = values}
instance ToResourceProperties IngressStringExpressionProperty where
  toResourceProperties IngressStringExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressStringExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON IngressStringExpressionProperty where
  toJSON IngressStringExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" IngressStringExpressionProperty where
  type PropertyType "Evaluate" IngressStringExpressionProperty = IngressStringToEvaluateProperty
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" IngressStringExpressionProperty where
  type PropertyType "Operator" IngressStringExpressionProperty = Value Prelude.Text
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {operator = newValue, ..}
instance Property "Values" IngressStringExpressionProperty where
  type PropertyType "Values" IngressStringExpressionProperty = ValueList Prelude.Text
  set newValue IngressStringExpressionProperty {..}
    = IngressStringExpressionProperty {values = newValue, ..}