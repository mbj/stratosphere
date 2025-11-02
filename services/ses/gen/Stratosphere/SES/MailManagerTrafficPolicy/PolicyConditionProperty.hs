module Stratosphere.SES.MailManagerTrafficPolicy.PolicyConditionProperty (
        module Exports, PolicyConditionProperty(..),
        mkPolicyConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressBooleanExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressIpv4ExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressStringExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerTrafficPolicy.IngressTlsProtocolExpressionProperty as Exports
import Stratosphere.ResourceProperties
data PolicyConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html>
    PolicyConditionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-booleanexpression>
                             booleanExpression :: (Prelude.Maybe IngressBooleanExpressionProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-ipexpression>
                             ipExpression :: (Prelude.Maybe IngressIpv4ExpressionProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-stringexpression>
                             stringExpression :: (Prelude.Maybe IngressStringExpressionProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-tlsexpression>
                             tlsExpression :: (Prelude.Maybe IngressTlsProtocolExpressionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyConditionProperty :: PolicyConditionProperty
mkPolicyConditionProperty
  = PolicyConditionProperty
      {haddock_workaround_ = (), booleanExpression = Prelude.Nothing,
       ipExpression = Prelude.Nothing, stringExpression = Prelude.Nothing,
       tlsExpression = Prelude.Nothing}
instance ToResourceProperties PolicyConditionProperty where
  toResourceProperties PolicyConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.PolicyCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanExpression" Prelude.<$> booleanExpression,
                            (JSON..=) "IpExpression" Prelude.<$> ipExpression,
                            (JSON..=) "StringExpression" Prelude.<$> stringExpression,
                            (JSON..=) "TlsExpression" Prelude.<$> tlsExpression])}
instance JSON.ToJSON PolicyConditionProperty where
  toJSON PolicyConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanExpression" Prelude.<$> booleanExpression,
               (JSON..=) "IpExpression" Prelude.<$> ipExpression,
               (JSON..=) "StringExpression" Prelude.<$> stringExpression,
               (JSON..=) "TlsExpression" Prelude.<$> tlsExpression]))
instance Property "BooleanExpression" PolicyConditionProperty where
  type PropertyType "BooleanExpression" PolicyConditionProperty = IngressBooleanExpressionProperty
  set newValue PolicyConditionProperty {..}
    = PolicyConditionProperty
        {booleanExpression = Prelude.pure newValue, ..}
instance Property "IpExpression" PolicyConditionProperty where
  type PropertyType "IpExpression" PolicyConditionProperty = IngressIpv4ExpressionProperty
  set newValue PolicyConditionProperty {..}
    = PolicyConditionProperty
        {ipExpression = Prelude.pure newValue, ..}
instance Property "StringExpression" PolicyConditionProperty where
  type PropertyType "StringExpression" PolicyConditionProperty = IngressStringExpressionProperty
  set newValue PolicyConditionProperty {..}
    = PolicyConditionProperty
        {stringExpression = Prelude.pure newValue, ..}
instance Property "TlsExpression" PolicyConditionProperty where
  type PropertyType "TlsExpression" PolicyConditionProperty = IngressTlsProtocolExpressionProperty
  set newValue PolicyConditionProperty {..}
    = PolicyConditionProperty
        {tlsExpression = Prelude.pure newValue, ..}