module Stratosphere.ServiceCatalog.CloudFormationProduct.CodeStarParametersProperty (
        CodeStarParametersProperty(..), mkCodeStarParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeStarParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-codestarparameters.html>
    CodeStarParametersProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-codestarparameters.html#cfn-servicecatalog-cloudformationproduct-codestarparameters-artifactpath>
                                artifactPath :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-codestarparameters.html#cfn-servicecatalog-cloudformationproduct-codestarparameters-branch>
                                branch :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-codestarparameters.html#cfn-servicecatalog-cloudformationproduct-codestarparameters-connectionarn>
                                connectionArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicecatalog-cloudformationproduct-codestarparameters.html#cfn-servicecatalog-cloudformationproduct-codestarparameters-repository>
                                repository :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeStarParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> CodeStarParametersProperty
mkCodeStarParametersProperty
  artifactPath
  branch
  connectionArn
  repository
  = CodeStarParametersProperty
      {haddock_workaround_ = (), artifactPath = artifactPath,
       branch = branch, connectionArn = connectionArn,
       repository = repository}
instance ToResourceProperties CodeStarParametersProperty where
  toResourceProperties CodeStarParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProduct.CodeStarParameters",
         supportsTags = Prelude.False,
         properties = ["ArtifactPath" JSON..= artifactPath,
                       "Branch" JSON..= branch, "ConnectionArn" JSON..= connectionArn,
                       "Repository" JSON..= repository]}
instance JSON.ToJSON CodeStarParametersProperty where
  toJSON CodeStarParametersProperty {..}
    = JSON.object
        ["ArtifactPath" JSON..= artifactPath, "Branch" JSON..= branch,
         "ConnectionArn" JSON..= connectionArn,
         "Repository" JSON..= repository]
instance Property "ArtifactPath" CodeStarParametersProperty where
  type PropertyType "ArtifactPath" CodeStarParametersProperty = Value Prelude.Text
  set newValue CodeStarParametersProperty {..}
    = CodeStarParametersProperty {artifactPath = newValue, ..}
instance Property "Branch" CodeStarParametersProperty where
  type PropertyType "Branch" CodeStarParametersProperty = Value Prelude.Text
  set newValue CodeStarParametersProperty {..}
    = CodeStarParametersProperty {branch = newValue, ..}
instance Property "ConnectionArn" CodeStarParametersProperty where
  type PropertyType "ConnectionArn" CodeStarParametersProperty = Value Prelude.Text
  set newValue CodeStarParametersProperty {..}
    = CodeStarParametersProperty {connectionArn = newValue, ..}
instance Property "Repository" CodeStarParametersProperty where
  type PropertyType "Repository" CodeStarParametersProperty = Value Prelude.Text
  set newValue CodeStarParametersProperty {..}
    = CodeStarParametersProperty {repository = newValue, ..}