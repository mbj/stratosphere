module Stratosphere.VerifiedPermissions.Policy.StaticPolicyDefinitionProperty (
        StaticPolicyDefinitionProperty(..),
        mkStaticPolicyDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticPolicyDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-staticpolicydefinition.html>
    StaticPolicyDefinitionProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-staticpolicydefinition.html#cfn-verifiedpermissions-policy-staticpolicydefinition-description>
                                    description :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-staticpolicydefinition.html#cfn-verifiedpermissions-policy-staticpolicydefinition-statement>
                                    statement :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticPolicyDefinitionProperty ::
  Value Prelude.Text -> StaticPolicyDefinitionProperty
mkStaticPolicyDefinitionProperty statement
  = StaticPolicyDefinitionProperty
      {haddock_workaround_ = (), statement = statement,
       description = Prelude.Nothing}
instance ToResourceProperties StaticPolicyDefinitionProperty where
  toResourceProperties StaticPolicyDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::Policy.StaticPolicyDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Statement" JSON..= statement]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON StaticPolicyDefinitionProperty where
  toJSON StaticPolicyDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Statement" JSON..= statement]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" StaticPolicyDefinitionProperty where
  type PropertyType "Description" StaticPolicyDefinitionProperty = Value Prelude.Text
  set newValue StaticPolicyDefinitionProperty {..}
    = StaticPolicyDefinitionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Statement" StaticPolicyDefinitionProperty where
  type PropertyType "Statement" StaticPolicyDefinitionProperty = Value Prelude.Text
  set newValue StaticPolicyDefinitionProperty {..}
    = StaticPolicyDefinitionProperty {statement = newValue, ..}