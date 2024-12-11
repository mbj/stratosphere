module Stratosphere.SSO.ApplicationAssignment (
        ApplicationAssignment(..), mkApplicationAssignment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationAssignment
  = ApplicationAssignment {applicationArn :: (Value Prelude.Text),
                           principalId :: (Value Prelude.Text),
                           principalType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationAssignment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ApplicationAssignment
mkApplicationAssignment applicationArn principalId principalType
  = ApplicationAssignment
      {applicationArn = applicationArn, principalId = principalId,
       principalType = principalType}
instance ToResourceProperties ApplicationAssignment where
  toResourceProperties ApplicationAssignment {..}
    = ResourceProperties
        {awsType = "AWS::SSO::ApplicationAssignment",
         supportsTags = Prelude.False,
         properties = ["ApplicationArn" JSON..= applicationArn,
                       "PrincipalId" JSON..= principalId,
                       "PrincipalType" JSON..= principalType]}
instance JSON.ToJSON ApplicationAssignment where
  toJSON ApplicationAssignment {..}
    = JSON.object
        ["ApplicationArn" JSON..= applicationArn,
         "PrincipalId" JSON..= principalId,
         "PrincipalType" JSON..= principalType]
instance Property "ApplicationArn" ApplicationAssignment where
  type PropertyType "ApplicationArn" ApplicationAssignment = Value Prelude.Text
  set newValue ApplicationAssignment {..}
    = ApplicationAssignment {applicationArn = newValue, ..}
instance Property "PrincipalId" ApplicationAssignment where
  type PropertyType "PrincipalId" ApplicationAssignment = Value Prelude.Text
  set newValue ApplicationAssignment {..}
    = ApplicationAssignment {principalId = newValue, ..}
instance Property "PrincipalType" ApplicationAssignment where
  type PropertyType "PrincipalType" ApplicationAssignment = Value Prelude.Text
  set newValue ApplicationAssignment {..}
    = ApplicationAssignment {principalType = newValue, ..}