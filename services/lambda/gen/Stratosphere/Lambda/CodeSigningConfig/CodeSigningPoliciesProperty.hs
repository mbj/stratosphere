module Stratosphere.Lambda.CodeSigningConfig.CodeSigningPoliciesProperty (
        CodeSigningPoliciesProperty(..), mkCodeSigningPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeSigningPoliciesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-codesigningpolicies.html>
    CodeSigningPoliciesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-codesigningpolicies.html#cfn-lambda-codesigningconfig-codesigningpolicies-untrustedartifactondeployment>
                                 untrustedArtifactOnDeployment :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeSigningPoliciesProperty ::
  Value Prelude.Text -> CodeSigningPoliciesProperty
mkCodeSigningPoliciesProperty untrustedArtifactOnDeployment
  = CodeSigningPoliciesProperty
      {haddock_workaround_ = (),
       untrustedArtifactOnDeployment = untrustedArtifactOnDeployment}
instance ToResourceProperties CodeSigningPoliciesProperty where
  toResourceProperties CodeSigningPoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::CodeSigningConfig.CodeSigningPolicies",
         supportsTags = Prelude.False,
         properties = ["UntrustedArtifactOnDeployment"
                         JSON..= untrustedArtifactOnDeployment]}
instance JSON.ToJSON CodeSigningPoliciesProperty where
  toJSON CodeSigningPoliciesProperty {..}
    = JSON.object
        ["UntrustedArtifactOnDeployment"
           JSON..= untrustedArtifactOnDeployment]
instance Property "UntrustedArtifactOnDeployment" CodeSigningPoliciesProperty where
  type PropertyType "UntrustedArtifactOnDeployment" CodeSigningPoliciesProperty = Value Prelude.Text
  set newValue CodeSigningPoliciesProperty {..}
    = CodeSigningPoliciesProperty
        {untrustedArtifactOnDeployment = newValue, ..}