module Stratosphere.FinSpace.Environment.SuperuserParametersProperty (
        SuperuserParametersProperty(..), mkSuperuserParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuperuserParametersProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-superuserparameters.html>
    SuperuserParametersProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-superuserparameters.html#cfn-finspace-environment-superuserparameters-emailaddress>
                                 emailAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-superuserparameters.html#cfn-finspace-environment-superuserparameters-firstname>
                                 firstName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-finspace-environment-superuserparameters.html#cfn-finspace-environment-superuserparameters-lastname>
                                 lastName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuperuserParametersProperty :: SuperuserParametersProperty
mkSuperuserParametersProperty
  = SuperuserParametersProperty
      {emailAddress = Prelude.Nothing, firstName = Prelude.Nothing,
       lastName = Prelude.Nothing}
instance ToResourceProperties SuperuserParametersProperty where
  toResourceProperties SuperuserParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::FinSpace::Environment.SuperuserParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                            (JSON..=) "FirstName" Prelude.<$> firstName,
                            (JSON..=) "LastName" Prelude.<$> lastName])}
instance JSON.ToJSON SuperuserParametersProperty where
  toJSON SuperuserParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailAddress" Prelude.<$> emailAddress,
               (JSON..=) "FirstName" Prelude.<$> firstName,
               (JSON..=) "LastName" Prelude.<$> lastName]))
instance Property "EmailAddress" SuperuserParametersProperty where
  type PropertyType "EmailAddress" SuperuserParametersProperty = Value Prelude.Text
  set newValue SuperuserParametersProperty {..}
    = SuperuserParametersProperty
        {emailAddress = Prelude.pure newValue, ..}
instance Property "FirstName" SuperuserParametersProperty where
  type PropertyType "FirstName" SuperuserParametersProperty = Value Prelude.Text
  set newValue SuperuserParametersProperty {..}
    = SuperuserParametersProperty
        {firstName = Prelude.pure newValue, ..}
instance Property "LastName" SuperuserParametersProperty where
  type PropertyType "LastName" SuperuserParametersProperty = Value Prelude.Text
  set newValue SuperuserParametersProperty {..}
    = SuperuserParametersProperty
        {lastName = Prelude.pure newValue, ..}