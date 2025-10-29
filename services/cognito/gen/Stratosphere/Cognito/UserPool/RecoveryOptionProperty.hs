module Stratosphere.Cognito.UserPool.RecoveryOptionProperty (
        RecoveryOptionProperty(..), mkRecoveryOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecoveryOptionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html>
    RecoveryOptionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html#cfn-cognito-userpool-recoveryoption-name>
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-recoveryoption.html#cfn-cognito-userpool-recoveryoption-priority>
                            priority :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecoveryOptionProperty :: RecoveryOptionProperty
mkRecoveryOptionProperty
  = RecoveryOptionProperty
      {name = Prelude.Nothing, priority = Prelude.Nothing}
instance ToResourceProperties RecoveryOptionProperty where
  toResourceProperties RecoveryOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.RecoveryOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Priority" Prelude.<$> priority])}
instance JSON.ToJSON RecoveryOptionProperty where
  toJSON RecoveryOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Priority" Prelude.<$> priority]))
instance Property "Name" RecoveryOptionProperty where
  type PropertyType "Name" RecoveryOptionProperty = Value Prelude.Text
  set newValue RecoveryOptionProperty {..}
    = RecoveryOptionProperty {name = Prelude.pure newValue, ..}
instance Property "Priority" RecoveryOptionProperty where
  type PropertyType "Priority" RecoveryOptionProperty = Value Prelude.Integer
  set newValue RecoveryOptionProperty {..}
    = RecoveryOptionProperty {priority = Prelude.pure newValue, ..}